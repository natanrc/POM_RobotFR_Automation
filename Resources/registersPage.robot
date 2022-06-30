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

Select Radio Button
    Click Element               ${gender_1}

Enter the first Name
    [Arguments]                 ${firstName}
    Input Text                  ${txt_firstName}        ${firstName}  

Close Browser
    Close All Browsers