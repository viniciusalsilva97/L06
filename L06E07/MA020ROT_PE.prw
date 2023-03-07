#INCLUDE 'totvs.ch'

User Function MA020ROT()
  local aArea    := getArea()
  local aAreaSA2 := SA2 -> (getArea())
  local aRotina := {} 

  aAdd(aRotina, {"Cad.Produto", "U_novoBtn", 0, 4 })

  restArea(aArea)
  restArea(aAreaSA2)
Return aRotina
