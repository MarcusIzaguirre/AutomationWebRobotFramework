*** Settings ***
Library        SeleniumLibrary


*** Variables ***
${MARCARCONSULTA_URL}                       https://www.rededorsaoluiz.com.br/paciente/marcar-consulta/especialidade-medico
${MARCARCONSULTA_TITLE_BROWSER}             Especialidade / Profissional - Agendamento de Consultas | Rede D'Or São Luiz
${MARCARCONSULTA_TITLE_PAGE}                xpath=//span[@data-qa-id='MedicoEspecialidade_Titulo_Mutavel']
${MARCARCONSULTA_INPUT_BUSCAR_ESPEC_MED}    id=digite a especialidade ou médico
${MARCARCONSULTA_TXT_CARDIOLOGIA}           Cardiologia
${MARCARCONSULTA_OPCAO_CARDIO}              xpath=//span[@class=' Geral'] 
${MARCARCONSULTA_PESQUISA_HOSPITAL}         id=digite o bairro ou hospital
${MARCARCONSULTA_TXT_PESQUISA_HOSPITAL}     Hospital São Luiz Morumbi
${MARCARCONSULTA_HOSPITAL_MORUMBI}          xpath=//span[@class='Hospital São Luiz']
${MARCARCONSULTA_TITLE_DADOS_PACIENTE}      Dados do paciente - Agendamento de Consultas | Rede D'Or São Luiz
${MARCARCONSULTA_INPUT_DTNASC}              xpath=//input[@type='tel']
${MARCARCONSULTA_TXT_DTNASC}                30031999 
${MARCARCONSULTA_TITLE_LOCAL}               Local do agendamento - Agendamento de Consultas | Rede D'Or São Luiz 
${MARCAR_CONSULTA_PAGE_LOCAL}               xpath=//span[@data-qa-id='MedicoEspecialidade_Titulo_Mutavel']

*** Keywords ***
Então deve mostrar a tela de "${ESPECIALIDADE MEDICO}"
    Switch Window                    ${MARCARCONSULTA_TITLE_BROWSER}
    Title Should Be                  ${MARCARCONSULTA_TITLE_BROWSER}
    Wait Until Element Is Visible    ${MARCARCONSULTA_TITLE_PAGE}
       

Dado que estou na página de marcação de consulta
    Go To                ${MARCARCONSULTA_URL}
    Title Should Be      ${MARCARCONSULTA_TITLE_BROWSER}   

E escolho a especialiadade cardiologia geral
    Click Element    ${MARCARCONSULTA_INPUT_BUSCAR_ESPEC_MED}
    Input Text       ${MARCARCONSULTA_INPUT_BUSCAR_ESPEC_MED}     ${MARCARCONSULTA_TXT_CARDIOLOGIA}
    Sleep    2s
    Press Keys    ${MARCARCONSULTA_INPUT_BUSCAR_ESPEC_MED}        ENTER 
    Sleep    4s


Quando pesquiso por "${HOSPITAL SÃO LUIZ MORUMBI}"
    Title Should Be    ${MARCARCONSULTA_TITLE_LOCAL} 
    Wait Until Element Is Visible    ${MARCAR_CONSULTA_PAGE_LOCAL}
    Input Text         ${MARCARCONSULTA_PESQUISA_HOSPITAL}     ${MARCARCONSULTA_TXT_PESQUISA_HOSPITAL}
    Sleep    2s
    Press Keys         ${MARCARCONSULTA_PESQUISA_HOSPITAL}    ENTER
    Sleep    4s
    Title Should Be    ${MARCARCONSULTA_TITLE_DADOS_PACIENTE} 
    Wait Until Element Is Visible    ${MARCARCONSULTA_INPUT_DTNASC}



Então devo ver a tela de dados do paciente
    Title Should Be        ${MARCARCONSULTA_TITLE_DADOS_PACIENTE}
    Wait Until Element Is Visible    ${MARCARCONSULTA_INPUT_DTNASC}

   
    
    
    
         