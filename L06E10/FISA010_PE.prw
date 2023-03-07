#INCLUDE 'totvs.ch'
#INCLUDE 'tbiconn.ch'
#INCLUDE 'topconn.ch'

User Function FISA010()
    local aParam   := PARAMIXB
    local lRet     := .t.
    local oObj     := nil 
    local cIdPonto := ''
    local cIdModel := ''

    if aParam <> NIL
        oObj     := aParam[1]
        cIdPonto := aParam[2]
        cIdModel := aParam[3]
        
        if cIdPonto == 'MODELPOS'
            lRet := U_buscaSql()
        endif
    endif
Return lRet

User Function buscaSql()
    local aArea    := getArea()
    local cAlias   := getNextAlias()
    local cQuery   := ""
    local lRet     := .t.
    local cMunici  := M->CC2_MUN
    local cEstado  := M->CC2_EST

    prepare environment empresa '99' filial '01' tables 'CC2' modulo 'FIS'

    cQuery += "SELECT CC2_EST, CC2_MUN FROM " + retSqlName("CC2") + " CC2 WHERE CC2_MUN = '" + cMunici + "' AND CC2_EST = '" + cEstado + "' AND D_E_L_E_T_ = ' '"

    tcquery cQuery alias &(cAlias) new 

   while &(cAlias) -> (!EOF())
        if &(cAlias)->(CC2_MUN) == cMunici .and. &(cAlias)->(CC2_EST) == cEstado 
            lRet := .f.
            fwAlertError("Esse município já está cadastrado!", "Cadastro Inválido!")
            exit 
        endif
        &(cAlias) -> (DbSkip()) 
    end

    &(cAlias) -> (dbCloseArea())
    restArea(aArea) 
Return lRet 
