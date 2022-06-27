*** Settings ***
Library         SeleniumLibrary
variables       ../PageObjects/register_locators.yaml


*** Keywords ***
Open my Browser
    [Arguments]         ${SiteUrl}              ${Browser}
    Open Browser        ${SiteUrl}              ${Browser}
    Maximize Browser Window

Clik Sign Input
    Click link                  ${link_signIn}

Enter New Email
    [Arguments]                 ${email}
    Input Text                  ${txt_email}        ${email}  

Click Button Sign Up
    Click Button                ${button_signup} 
    Element Should Contain      ${register_page}               Authentication 

Close Browser
    Close All Browsers