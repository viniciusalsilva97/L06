#INCLUDE 'totvs.ch'

User Function A410EXC()
    local aArea    := getArea()
    local aAreaSC5 := SC5 -> (getArea())
    local lRet     := .t.
  
  if existBlock('permiteExclusao')
    lRet := execBlock('permiteExclusao', .f., .f.,)
  endif

  restArea(aArea)
  restArea(aAreaSC5)
Return lRet 
