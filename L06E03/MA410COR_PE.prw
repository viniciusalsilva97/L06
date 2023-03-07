#INCLUDE 'totvs.ch'

User Function MA410COR()
    local aArea       := getArea()
    local aAreaSC5    := SC5 -> (getArea())
    local aNovasCores := {} 
  
  if existBlock('alteraLegenda')
    aNovasCores := execBlock('alteraLegenda', .f., .f.,)
  endif

  restArea(aArea)
  restArea(aAreaSC5)
Return aNovasCores
