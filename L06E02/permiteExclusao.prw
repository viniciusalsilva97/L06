#INCLUDE 'totvs.ch'

User Function permiteExclusao()
    local lRet := .t.
    local cTipoDeInclusao := SC5 -> C5_ZZTIPOI

    if cTipoDeInclusao == "Automatico"
       lRet := .f. //* Para impedir a exclusão
       Alert("Você não pode excluir esse pedido de venda") 
    endif
Return lRet 
