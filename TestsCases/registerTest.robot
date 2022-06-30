*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/registersPage.robot

*** Variables ***
${Browser}      Chrome
${SiteUrl}      http://automationpractice.com/index.php?controller=authentication&back=my-account#account-creation
${email}        natants@gmail.com


*** Test Cases ***
Register Form Test
    Open my Browser             ${SiteUrl}              ${Browser} 
    Clik Sign Input
    Enter New Email             ${email}
    Click Button Sign Up
    Select Radio Button
    Enter the first Name
    sleep       2s
    Close Browser