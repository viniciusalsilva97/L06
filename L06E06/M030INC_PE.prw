#INCLUDE 'totvs.ch'

User Function M030INC()
  local aArea    := getArea()
  local aAreaSA1 := SA1 -> (getArea())
  local lRet     := .t.

  if existBlock(' blockCliente')
    lRet := execBlock('blockCliente', .f., .f.,)
  endif

  restArea(aArea)
  restArea(aAreaSA1)
Return lRet 
