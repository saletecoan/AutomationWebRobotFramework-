*** Keywords ***
E acessar a tela de cadastro
    Wait Until Element Is Visible    ${LOGIN.INPUT_EMAIL_CADASTRO}
    ${NOVO_EMAIL}    FakerLibrary.Email    
    Input Text    ${LOGIN.INPUT_EMAIL_CADASTRO}    ${NOVO_EMAIL}         
    Click Element    ${LOGIN.BOTAO_CREATE}

    #FakerLibrary.Email - se eu usar ele não vai retornar o mesmo email e sim outro
     #colocar dentro de varoiavel 
     # para rodar novamentre tera que mudar - usar bibliotes    
    
     