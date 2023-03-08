#INCLUDE 'totvs.ch'

User Function MT010INC()
  local aArea    := getArea()
  local aAreaSB1 := SB1 -> (getArea())
  local lRet     := .t.
  
  if existBlock('alteraDescricao')
    //* O execBlock só chama funções de usuário
    //* PE tradicionais podem precisar fazer uso do recLock()
    lRet := execBlock('alteraDescricao', .f., .f.,)
  endif

  if existBlock('bloqueiaProduto')
    lRet := execBlock('bloqueiaProduto', .f., .f.,)
  endif
  
  restArea(aArea)
  restArea(aAreaSB1)
Return lRet 
