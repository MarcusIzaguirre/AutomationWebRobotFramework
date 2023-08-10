*** Settings ***
Library        SeleniumLibrary


*** Variables ***
${EXAME_TITLE_BROWSER}        Exame - Agendamento de Exames | Rede D`Or São Luiz
${TXT_NOME_EXAME}             Teste ergométrico
${INPUT_NOME_EXAME}           id=query_input
${VALID_EXAME_BUSCADO}        xpath=//div/h3[contains(., 'Teste Ergométrico')]

*** Keywords ***
E buscar um exame selecionando ele
    Switch Window        ${EXAME_TITLE_BROWSER}
    Input Text           ${INPUT_NOME_EXAME}    ${TXT_NOME_EXAME}
    Press Keys           ${INPUT_NOME_EXAME}    ENTER
    Wait Until Element Is Visible    ${VALID_EXAME_BUSCADO}


Então devo ver o exame selecionado
    Wait Until Element Is Visible    ${VALID_EXAME_BUSCADO}