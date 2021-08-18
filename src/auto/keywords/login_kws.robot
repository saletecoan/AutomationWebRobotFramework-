*** Settings ***

Resource    ../../config/package.resource

*** Keywords***
#Quando realizar login com sucesso
Quando inserir os dados de login
    [Arguments]    ${email}    ${SENHA}
    Wait Until Element Is Visible    ${LOGIN.INPUT_EMAIL} 
    Input Text        ${LOGIN.INPUT_EMAIL}    ${email}             
    Input Text        ${LOGIN.INPUT_SENHA}    ${SENHA}       
    

