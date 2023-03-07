#INCLUDE 'totvs.ch'

User Function MBlkColor()
    local aCorBlock := {} 
  
    if existBlock('mudaCor')
        aCorBlock := execBlock('mudaCor', .f., .f.,)
    endif

Return aCorBlock
