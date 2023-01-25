*** Settings ***
Library    SeleniumLibrary
Variables    ../Page_Object/Locators.py
*** Keywords ***
Ouvrir le navigateur 
    [Arguments]    ${URL}    ${BROWSER}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
Saisir nom d utilisateur 
    [Arguments]    ${User}
    Input Text    ${txt_LoginUserName}    ${user}
Saisir le password
    [Arguments]    ${password}
    Input Password    ${txt_LoginPassWord}    ${password}
Cliquer sur le bouton login 
    Click Button    ${btn_LoginBtn}
Valider que le mot Dashbord s affiche 
    Page Should Contain    Dashboard
Fermer le navigateur
    Sleep    3
    Close browser 