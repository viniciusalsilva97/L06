#INCLUDE 'totvs.ch'

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
            if existBlock('buscaSql')
                lRet := execBlock('buscaSql', .f., .f.)
            endif
        endif
    endif
Return lRet
