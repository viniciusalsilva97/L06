#INCLUDE 'totvs.ch'

User Function MT010INC()
  local aArea    := getArea()
  local aAreaSB1 := SB1 -> (getArea())
  local lRet     := .t.
  
  if existBlock('alteraDescricao')
    lRet := execBlock('alteraDescricao', .f., .f.,)
  endif

  if existBlock('bloqueiaProduto')
    lRet := execBlock('bloqueiaProduto', .f., .f.,)
  endif
  
  restArea(aArea)
  restArea(aAreaSB1)
Return lRet 
