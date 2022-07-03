*** Settings ***
Library             SeleniumLibrary
Resource            ../Resources/OrderKeywords.robot
Suite Setup         Open Browser                     ${SiteUrl}             ${Browser}
Suite Teardown      Close Browser

*** Variables ***
${Browser}      Chrome
${SiteUrl}      http://automationpractice.com/index.php?controller=authentication&back=my-account
${user}         natantondok@gmail.com
${pwd}          P@ss123456    


*** Test Cases ***
Verification Account
    Maximize Browser Window
    #Clik Sign Input
    Enter UserName              ${user}
    Enter Password              ${pwd}
    Click Button Sign In

Order 1 product
    Select Order Categori WOMAN
    Select 1 product
    sleep       5s



