#INCLUDE 'totvs.ch'

User Function alteraDescricao()
    local lRet := .t.
    local cMemoriaDesc := "Cod. Manual - " + allTrim(M -> B1_DESC)

    SB1->B1_DESC := cMemoriaDesc
Return lRet 
