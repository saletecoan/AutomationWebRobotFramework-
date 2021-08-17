*** Settings ***
Documentation    Keywords relacionadas a tela home.

Resource         ../../config/package.resource

*** Keywords ***
Dado que o cliente está na tela inicial da aplicação 
    Abrir a sessão
    Wait Until element Is Visible    ${HOME.BOTAO_SIGNIN}

E acessar a tela de login
    Wait Until element Is Visible    ${HOME.BOTAO_SIGNIN}
    click Element                    ${HOME.BOTAO_SIGNIN} 

