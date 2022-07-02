*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/LoginKeyword.robot
Suite Setup                         Open Browser                     ${SiteUrl}             ${Browser}
Suite Teardown                      Close Browser

*** Variables ***
${Browser}      Chrome
${SiteUrl}      http://automationpractice.com/index.php?controller=authentication&back=my-account
${user}         natantondok@gmail.com
${pwd}          P@ss123456    


*** Test Cases ***
Verification My Account
    #Clik Sign Input
    Maximize Browser Window
    Enter UserName              ${user}
    Enter Password              ${pwd}
    Click Button Sign In
    Verify Succesfull Login
    #Verify list