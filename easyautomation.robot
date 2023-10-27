*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${search_form}    css=form[id=userForm]
${search_query}    css=input[name=firstName]
${search_term}    KlaAutomatic

*** Test Cases ***
CT01_AbrirPagina
    Open Browser    https://demoqa.com/automation-practice-form    Chrome

CT02_IncluirUsuarioSemSucesso
    Input Text    firstName    Klmen
    Input Text    lastName    Mendes
    Input Text    userEmail    klMen@yahoo.com.br
    Input Text    userNumber    7764
    Submit Form
    Sleep    5s
    Close Browser

CT03_IncluirUsuarioSucesso
    Open Browser    https://demoqa.com/automation-practice-form    Chrome
    Maximize Browser Window
    Input Text    firstName    Kl
    Input Text    lastName    Mendes
    Input Text    userEmail    klMen@yahoo.com.br
    Input Text    userNumber    2292833771
    Sleep    3s
    Click Element    xpath://*[@id="genterWrapper"]/div[2]/div[1]/label
    Sleep    3s
    Submit Form
    Sleep    10s
    Close Browser
