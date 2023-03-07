#INCLUDE 'totvs.ch'

User Function novoBtn()
    local cAlias      := "SB1"
    private cCadastro := "Cad. Produtos"
    private aRotina   := {}

    AADD( aRotina, {'Visualizar', 'AxVisual', 0, 2} )
    AADD( aRotina, {'Incluir',    'AxInclui', 0, 3} )
    AADD( aRotina, {'Alterar',    'AxAltera', 0, 4} )
    AADD( aRotina, {'Excluir',    'AxDeleta', 0, 5} )

    DbSelectArea("SB1")
    DbSetOrder(1)

    MBrowse(NIL, NIL, NIL, NIL, cAlias)

    DbCloseArea()
Return aRotina
