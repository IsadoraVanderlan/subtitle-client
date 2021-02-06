#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

//====================================================================================================
//Programa....: Legenda03
//Descricao ..: Criar Legenda Para Rotina.
//====================================================================================================


User Function Legenda03()

Private cCadastro:="Meus Clientes" //Titulo da Rotina

Private aRotina:={{"Pesquisar"  ,"AxPesqui",0,1},; //Botoes que será incluidos na Rotina
                  {"Visualizar" ,"AxVisual",0,2},;
                  {"Incluir"    ,"AxInclui",0,3},;
                  {"Alterar"    ,"AxAltera",0,4},;
                  {"Excluir"    ,"AxDeleta",0,5},;
                  {"Legenda"    ,"u_legn()",0,6}} //Está linha chama a função criada para a legenda

aCores:={{"A1_TIPO=='F'"   ,"BR_PRETO"},;   //Função que fará a mudança das cores do status
         {"A1_TIPO=='L'"   ,"BR_VERMELHO"},; 
         {"A1_TIPO=='R'"   ,"BR_LARANJA"},;
         {"A1_TIPO=='S'"   ,"BR_AZUL"},;
         {"A1_TIPO=='X'"   ,"BR_VERDE"}}
         
               

mBrowse(,,,,"SA1",,,,,6,aCores) //Informa tabela que será mostrado na Rotina/ Opção do menu que será aberta ao clicar em enter/ Chamada da função aCores

Return 

//================================================================================================
User Function LEGN()

BrwLegenda(cCadastro,"Valores",{{"BR_PRETO"     ,"Consumidor Final"},;//Função para criação da legenda
                                {"BR_VERMELHO"  ,"Produto Rural"},;   
                                {"BR_LARANJA"   ,"Revendedor"},;
                                {"BR_AZUL"      ,"Solidário"},;
                                {"BR_VERDE"     ,"Exportação"}})

Return
                       
