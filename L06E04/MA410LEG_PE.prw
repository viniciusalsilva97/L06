#INCLUDE 'totvs.ch'

User Function MA410LEG()
    local aArea        := getArea()
    local aAreaSC5     := SC5 -> (getArea())
    local aNovaLegenda := {} 
  
  if existBlock('alteraTextoLegenda')
    aNovaLegenda := execBlock('alteraTextoLegenda', .f., .f.,)
  endif

  restArea(aArea)
  restArea(aAreaSC5)
Return aNovaLegenda
