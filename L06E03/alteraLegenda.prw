#INCLUDE 'totvs.ch'

User Function alteraLegenda()
    local aNovasCores := {{"Empty(C5_LIBEROK).And.Empty(C5_NOTA)" ,"CHECKOK"}, {"!Empty(C5_NOTA).Or.C5_LIBEROK=='E'","BR_CANCEL"},{"!Empty(C5_LIBEROK).And.Empty(C5_NOTA)","GCTPIMSE"}, {"C5_BLQ == '1'", "BR_AZUL"}, {"C5_BLQ =='2'", "BR_LARANJA"}}  
    
Return aNovasCores 
