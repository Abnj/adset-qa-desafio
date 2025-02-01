*** Settings ***
Documentation    Este arquivo contém as ações da página de login.
Library    SeleniumLibrary
Resource   ../main.robot

*** Keywords ***

Fazer login
    Open Browser    browser=chrome  
    Maximize Browser Window
    Go To    url=${URL}
    # Obter todos os identificadores de janelas/abas abertas
    ${handles}=    Get Window Handles
    # Alternar para a nova aba (última aba aberta)
    Switch Window    ${handles}[-1]
    Wait Until Element Is Visible    xpath=//input[@name='Email']   timeout=10
    Input Text    xpath=//input[@name='Email']    qa@adset.com.br
    Input Password    xpath=//input[@name='Senha']    9PK6#E8m
    Click Element    xpath=//button[@type='submit'][contains(.,'Entrar')]

    Execute JavaScript    window.scrollBy(0, 1000)