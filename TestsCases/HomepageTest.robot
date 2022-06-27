*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/HomePages.robot

*** Variables ***
${Browser}      Chrome
${SiteUrl}      http://automationpractice.com/index.php
${validtext}                Dress


*** Test Cases ***
Verify Home Page
    Open my Browserku                       ${SiteUrl}              ${Browser} 
    Verify Current Url Is Homepage Url
    Verify Homepage Title
    Verify Contact No
    Verify Logo
    Verify Searching text                   ${validtext}
    sleep       5s
    Verify Button Searh
    Verify Shopping Cart
    sleep       2s
    Verify Order Categori WOMAN
    sleep       2s
    Close my Browser