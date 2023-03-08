#INCLUDE 'totvs.ch'

User Function MT010ALT()
  local aArea    := getArea()
  local aAreaSB1 := SB1 -> (getArea())
  local lRet     := .t.
  
  if existBlock('alteraDescricao')
    lRet := execBlock('alteraDescricao', .f., .f.,)
  endif

  restArea(aArea)
  restArea(aAreaSB1)
Return lRet 
