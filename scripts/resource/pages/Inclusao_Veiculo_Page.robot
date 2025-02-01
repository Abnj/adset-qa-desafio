*** Settings ***
Documentation    Este arquivo contém as ações da página de inclusão de veículos.
Library    SeleniumLibrary
Resource   ../main.robot

*** Keywords ***

Dado que estou na pagina de inclusao de veiculos
    # Obter todos os identificadores de janelas/abas abertas
    ${handles}=    Get Window Handles
    # Alternar para a nova aba (última aba aberta)
    Switch Window    ${handles}[-1]
    Wait Until Element Is Visible    xpath=//i[contains(@class,'s16 icomoon-icon-car')]  timeout=10
    Click Element    xpath=//i[contains(@class,'s16 icomoon-icon-car')]
    Click Element    xpath=//span[@class='txt'][contains(.,'Incluir')]

Quando preencho os campos obrigatórios com dados inválidos
    # Obter todos os identificadores de janelas/abas abertas
    ${handles}=    Get Window Handles
    # Alternar para a nova aba (última aba aberta)
    Switch Window    ${handles}[-1]
    Wait Until Element Is Visible    ${Menu_Incluir}    timeout=10
    Input Text    ${Placa_Veiculo}    VVV-4R00
    Input Text    ${Campo_Quilometragem}    1000
    Input Text    ${Campo_Valor}    5000000
    Execute JavaScript    window.scrollBy(0, 4000)

Quando adiciono os dados do veículo vazio
     # Obter todos os identificadores de janelas/abas abertas
     ${handles}=    Get Window Handles
     # Alternar para a nova aba (última aba aberta)
     Switch Window    ${handles}[-1]
     Wait Until Element Is Visible    ${Menu_Incluir}    timeout=10
      Input Text    ${Placa_Veiculo_Vazio}    ""
     Input Text    ${Campo_Quilometragem_Vazio}    ""
     Input Text    ${Campo_Valor_Vazio}    ""
     Execute JavaScript    window.scrollBy(0, 4000)

Então o sistema não deve permitir a inclusão do veículo
    Execute JavaScript    window.scrollBy(0, 4000)
    Wait Until Element Is Visible    ${Botao_confirmar}    timeout=10
    Click Button    ${Botao_confirmar}

 E deve exibir a mensagem de erro
    Execute JavaScript    window.scrollBy(4000, 0)
    Wait Until Element Is Visible    ${Menu_Incluir}    timeout=10
    Wait Until Element Is Visible    ${Mensagem_Erro}  timeout=20

    Capture Page Screenshot    timeout=33
