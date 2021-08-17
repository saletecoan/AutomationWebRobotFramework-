*** Settings ***
Documentation    Cenários de testes relacionado ao Login da aplicação
Resource    ../../src/config/package.resource

*** Test Cases ***
Cenario: Login com sucesso
#    Dado -> Pré requisito/ estado atual 
#    E -> Passo complementar  
#    Quando -> Ação para um resultado esperado
#    E -> Passo complementar
#    Então -> Resultado esperado
    Dado que o cliente está na tela inicial da aplicação 
    E acessar a tela de login
    Quando realizar login com sucesso
    Então deve visualizar a tela MY ACCOUNT 
    Encerrar sessão

#   Criar as Keywords - importar as bibliotecas (pip instal - seleniumLibrary / fake Library / Strig - cuidar com versões certas) 
