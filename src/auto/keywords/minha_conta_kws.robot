*** Keywords ***
Então deve visualizar a tela MY ACCOUNT
    Wait Until Element Is Visible     ${MINHA_CONTA.TITULO}
    ${TITULO_ATUAL}    Get Text    ${MINHA_CONTA.TITULO}
    Should Be Equal    ${TITULO_ATUAL}    MY ACCOUNT   