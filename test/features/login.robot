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
    Dado que o cliente está na tela inicial da aplicação 
    E acessar a tela de login
    Quando inserir os dados de login    rasafa9934@ovooovo.com    Teste@123
    E clicar no elemento    ${LOGIN.BOTAO_SIGNIN}
    Então deve visualizar a tela MY ACCOUNT
   
Cenario: Login com credenciais inválido 
    Dado que o cliente está na tela inicial da aplicação 
    E acessar a tela de login
    Quando inserir os dados de login    salete@ovooovo.com    Teste@111
    E clicar no elemento    ${LOGIN.BOTAO_SIGNIN} 
    Então deve visualizar a mensagem de erro    ${LOGIN.TEXTO_ERRO}    Authentication failed. 
  


#   Criar as Keywords - importar as bibliotecas (pip instal - seleniumLibrary / fake Library / Strig - cuidar com versões certas) 
