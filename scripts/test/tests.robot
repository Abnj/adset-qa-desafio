*** Settings ***
Documentation    Este arquivo contém os casos de teste de inclusão de veículos na plataforma AdSet Integrador.
Resource   ../resource/main.robot
Test Setup    Fazer Login

*** Test Cases ***

TC07: Inclusão de um novo veículo com dados inválidos.
    [Documentation]  Teste que valida o comportamento do sistema ao tentar incluir um novo veículo com dados inválidos.
    [Tags]    TC07
    Dado que estou na pagina de inclusao de veiculos
    Quando preencho os campos obrigatórios com dados inválidos
    Então o sistema não deve permitir a inclusão do veículo
    E deve exibir a mensagem de erro

TC13: Inclusão de um novo veículo com dados vazios.
    [Documentation]  Teste que valida o comportamento do sistema ao tentar incluir um novo veículo com dados vazios.
    [Tags]    TC13
    Dado que estou na pagina de inclusao de veiculos
    Quando adiciono os dados do veículo vazio
    Então o sistema não deve permitir a inclusão do veículo
    E deve exibir a mensagem de erro