*** Settings ***
Library         SeleniumLibrary
variables       ../PageObjects/register_locators.yaml
Library         DebugLibrary


*** Keywords ***
Open my Browser
    [Arguments]         ${SiteUrl}              ${Browser}
    Open Browser        ${SiteUrl}              ${Browser}
    Maximize Browser Window

Clik Sign Input
    Click Element               ${link_signIn}

Enter New Email
    [Arguments]                 ${myemail}
    #debug
    Input Text                  ${txt_email1}          ${myemail}

Click Button Sign Up
    Click Button                ${button_signup} 

Select Radio Button
    Click Element               ${gender_1}

Enter the first Name
    [Arguments]                 ${firstName}
    Input Text                  ${txt_firstName}        ${firstName}  

Close Browser
    Close All Browsers