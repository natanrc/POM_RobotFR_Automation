*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/LoginKeyword.robot

*** Variables ***
${Browser}      Chrome
${SiteUrl}      http://automationpractice.com/index.php
${user}         natantondok@gmail.com
${pwd}          P@ss123456    


*** Test Cases ***
Login wit invalid email and invalid Password
    Open my Browser             ${SiteUrl}              ${Browser} 
    Clik Sign Input
    Enter UserName              ${user}
    Enter Password              ${pwd}
    Click Button Sign In
    Verify Succesfull Login
    Close Browser