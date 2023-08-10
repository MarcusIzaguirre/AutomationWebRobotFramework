*** Settings ***
Resource        ../resources/Resource.robot
Resource        ../pages/Home.robot
Resource        ../pages/MarcarConsulta.robot
Resource        ../pages/MarcarExame.robot
Test Setup        Open the browser
Test Teardown     Close the browser

### SETUP -> Roda as keywords antes de executar todos os testes da suite ou antes de um teste
### TEARDOWN -> Roda Keyword depois de uma suite ou teste


*** Test Cases ***
Cenário 01: Deve mostrar a tela de marcação de consulta
    [Tags]   auto
    Dado que estou na página home do site
    Quando eu clicar em "Marque uma consulta"
    Então deve mostrar a tela de "Busque pela especialidade ou nome do médico"

Cenário 02: Mostrar tela de dados do paciente
    Dado que estou na página de marcação de consulta
    E escolho a especialiadade cardiologia geral
    Quando pesquiso por "Hospital São Luiz Morumbi"
    Então devo ver a tela de dados do paciente

Cenário 03: Mostrar exame selecionado
    Dado que estou na página home do site
    Quando eu clicar para marcar um exame em "Marque seus exames"
    E buscar um exame selecionando ele
    Então devo ver o exame selecionado

#     Quando eu clicar em "Marque uma consulta" para marcar
#     Então deve abrir uma nova aba contendo a pergunta "Que tipo de atendimento você está procurando"
#     E ao selecionar PRESENCIAL
#     E ao buscar uma especialiadade ou médico desejado "Oncologia Clinica"
#     E digitar o local onde quero ser atendido "HOSPITAL SÃO LUIZ UNIDADE JABAQUARA" selecionando-o
#     E preencho data, sexo e clico em PROSSEGUIR
#     Quando seleciono a FORMA DE PAGAMENTO ${#forma}, ${#convenio}, ${#nomePlano} e clico em PROSSEGUIR
#     Então valido que o sistema inicia a busca por horário na unidade escolhida
#     E que o resultado informou que não existem horários disponíveis
#     E que é possivel continuar no chat clicando no botão "CONTINUE ATRAVÉS DO CHAT"

# #AUTOMATIZAR
# Cenário 03: Marcar Exames
#     [Tags]   auto
#     Dado que estou na página home do site
#     Quando eu clicar em "Marque seus exames" exame
#     Então mostra a pergunta "Que tipo de exame você gostaria de marcar?" tipo exame

# Cenário 04: Validar Unidades
#     Dado que estou na página home do site
#     E clico no menu superior UNIDADES
#     Quando preencho as informações desejadas para busca
#     Então valido resultado encontrado para o tipo selecionado

# Cenário 05: Validar Especialidades
#     Dado que estou na página home do site
#     E clico no menu superior ESPECIALIDADES
#     Quando busco por "Otorrinolaringologia Clínica"
#     Então valido as explicações sobre a Especialidade
#     E o botão disponível para marcação de consulta "MARCAR CONSULTA"

# Cenário 06: Validar Exames e Procedimentos
#     Dado que estou na página home do site
#     E clico no menu superior EXAMES E PROCEDIMENTOS
#     Quando busco por "RESSONÂNCIA MAGNÉTICA ANORRETAL"
#     Então valido as explicações sobre o exame
#     E o botão disponível para marcação do exame "MARCAR EXAME"

# #AUTOMATIZAR
# Cenário 07: Validar Resultado de Exames
#     [Tags]   auto
#     Dado que estou na página home do site
#     E clico no menu superior RESULTADO DE EXAMES
#     Quando seleciono a unidade desejada
#     Então é mostrado abaixo o quadro da ÁREA DO PACIENTE
#     E clico em "ACESSAR RESULTADOS"
#     Então é aberta uma nova aba para fazer o login no sistema

# Cenário 08: Validar a busca de um Médico
#     Dado que estou na página home do site
#     E clico no menu superior "ENCONTRE UM MÉDICO"
#     Quando busco pelo nome "IZABELA CRISTINA SOUZA DE ALBUQUERQUE"
#     Então valido as informações sobre a médica
#     E o botão disponível para marcação de consulta "MARCAR CONSULTA"

# #AUTOMATIZAR
# Cenário 09: Validar área do Médico
#     [Tags]   auto
#     Dado que estou na página home do site
#     E clico no menu superior direito "Área do Médico"
#     Quando clico em "Resultados de Exames"
#     Então valido a área do médico com a possibilidade de login    