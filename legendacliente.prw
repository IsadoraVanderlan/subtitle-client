#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

//====================================================================================================
//Programa....: Legenda03
//Descricao ..: Criar Legenda Para Rotina.
//====================================================================================================


User Function Legenda03()

Private cCadastro:="Meus Clientes" //Titulo da Rotina

Private aRotina:={{"Pesquisar"  ,"AxPesqui",0,1},; //Botoes que ser� incluidos na Rotina
                  {"Visualizar" ,"AxVisual",0,2},;
                  {"Incluir"    ,"AxInclui",0,3},;
                  {"Alterar"    ,"AxAltera",0,4},;
                  {"Excluir"    ,"AxDeleta",0,5},;
                  {"Legenda"    ,"u_legn()",0,6}} //Est� linha chama a fun��o criada para a legenda

aCores:={{"A1_TIPO=='F'"   ,"BR_PRETO"},;   //Fun��o que far� a mudan�a das cores do status
         {"A1_TIPO=='L'"   ,"BR_VERMELHO"},; 
         {"A1_TIPO=='R'"   ,"BR_LARANJA"},;
         {"A1_TIPO=='S'"   ,"BR_AZUL"},;
         {"A1_TIPO=='X'"   ,"BR_VERDE"}}
         
               

mBrowse(,,,,"SA1",,,,,6,aCores) //Informa tabela que ser� mostrado na Rotina/ Op��o do menu que ser� aberta ao clicar em enter/ Chamada da fun��o aCores

Return 

//================================================================================================
User Function LEGN()

BrwLegenda(cCadastro,"Valores",{{"BR_PRETO"     ,"Consumidor Final"},;//Fun��o para cria��o da legenda
                                {"BR_VERMELHO"  ,"Produto Rural"},;   
                                {"BR_LARANJA"   ,"Revendedor"},;
                                {"BR_AZUL"      ,"Solid�rio"},;
                                {"BR_VERDE"     ,"Exporta��o"}})

Return
                       
