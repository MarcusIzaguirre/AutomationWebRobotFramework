*** Settings ***
Library        SeleniumLibrary


*** Variables ***
${HOME_URL}                        https://www.rededorsaoluiz.com.br/
${HOME_TOPLEFT_MENU}               Rede D'Or São Luiz - Home
${HOME_TEXTBTN_MARCAR_CONSULTA}    xpath=//div/h4[contains(., 'Marque uma consulta')]
${HOME_BTN_MARCAR_CONSULTA}        xpath=//*[@data-test-id='_ctamarqueUmaConsulta']
${HOME_TEXTBTN_MARCAR_EXAME}    xpath=//div/h4[contains(., 'Marque seus exames')]
${HOME_BTN_MARCAR_EXAME}        xpath=//*[@data-test-id='_ctamarqueSeusExames']

*** Keywords ***
Dado que estou na página home do site
    Go To               ${HOME_URL}
    Title Should be     ${HOME_TOPLEFT_MENU}

Quando eu clicar em "${MARCAR_CONSULTA}"  
    Wait Until Element Is Visible    ${HOME_TEXTBTN_MARCAR_CONSULTA}
    Click Element                    ${HOME_BTN_MARCAR_CONSULTA} 

Quando eu clicar para marcar um exame em "Marque seus exames"
    Wait Until Element Is Visible    ${HOME_TEXTBTN_MARCAR_EXAME} 
    Click Element    ${HOME_BTN_MARCAR_EXAME}
           