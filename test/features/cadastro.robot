
*** Settings ***
Resource    ../../src/config/package.resource

Test setup    Abrir sessão
Test Teardown    Encerrar sessão 

*** Test Case ***
Cenario: Validar cadastro com sucesso
    [Tags]    CADASTRO    POSITIVO           
    Dado que o cliente está na tela inicial da aplicação
    E acessar a tela de login  
    E acessar a tela de cadastro
   