*** Settings ***
Documentation    Cenários de testes relacionado ao Login da aplicação
#    Dado -> Pré requisito/ estado atual 
#    E -> Passo complementar  
#    Quando -> Ação para um resultado esperado
#    E -> Passo complementar
#    Então -> Resultado esperado

Resource    ../../src/config/package.resource

Test setup    Abrir sessão
Test Teardown    Encerrar sessão 

*** Test Cases ***
Cenario: Login com sucesso
#Tag controlar a execução de teste TAGS e colocar em todos os cenarios que utiliza
#Funcionalidade - login / SMOKE - fumaça - sempre executado minimo da aplicação
    [Tags]    LOGIN    POSITIVO           
    Dado que o cliente está na tela inicial da aplicação 
    E acessar a tela de login
    Quando inserir os dados de login    ${MASSA_DADOS.LOGIN.EMAIL}    ${MASSA_DADOS.LOGIN.SENHA}
    E clicar no elemento    ${LOGIN.BOTAO_SIGNIN}
    Então deve visualizar a tela MY ACCOUNT
   
Cenario: Login com credenciais inválido 
    [Tags]    LOGIN    NEGATIVO 
    Dado que o cliente está na tela inicial da aplicação 
    E acessar a tela de login
    Quando inserir os dados de login    ${MASSA_DADOS.LOGIN_INVALIDO.EMAIL}    ${MASSA_DADOS.LOGIN_INVALIDO.SENHA}
    E clicar no elemento    ${LOGIN.BOTAO_SIGNIN} 
    Então deve visualizar a mensagem de erro    ${LOGIN.TEXTO_ERRO}    Authentication failed. 
  


#   Criar as Keywords - importar as bibliotecas (pip instal - seleniumLibrary / fake Library / Strig - cuidar com versões certas) 
