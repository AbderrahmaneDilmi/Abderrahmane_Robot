*** Settings ***
Resource    ../Ressources/Login.robot
Test Setup    Ouvrir le navigateur    ${URL}    ${BROWSER}
Test Teardown    Fermer le navigateur
Suite Setup    Log To Console    j execte avant tout les cas de tests
Suite Teardown    Log To Console    J execute apres tout les cas de tests
*** Variables ***
${URL}    https://admin-demo.nopcommerce.com/admin/
${BROWSER}    chrome 
${User_name}    admin@yourstore.com
${PassWord}    admin

*** Test Cases ***
Se connecter 01
    
    Given Saisir nom d utilisateur       ${User_name}
    When Saisir le password    ${PassWord}
    And Cliquer sur le bouton login
    Then Valider que le mot Dashbord s affiche 
    
Se connecter 02
    
    Given Saisir nom d utilisateur       ${User_name}
    When Saisir le password    ${PassWord}
    And Cliquer sur le bouton login
    Then Valider que le mot Dashbord s affiche 
