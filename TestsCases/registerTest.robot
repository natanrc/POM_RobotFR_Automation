*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/registersPage.robot

*** Variables ***
${Browser}      Chrome
${SiteUrl}      http://automationpractice.com/index.php
${email}        natants@gmail.com


*** Test Cases ***
Register Form Test
    Open my Browser             ${SiteUrl}              ${Browser} 
    Clik Sign Input
    Enter New Email             ${email}
    sleep       2s
    Click Button Sign Up
    Close Browser