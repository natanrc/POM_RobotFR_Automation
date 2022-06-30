*** Settings ***
Library         SeleniumLibrary
variables       ../PageObjects/myAccount_locators.yaml


*** Keywords ***
Open my Browser
    [Arguments]         ${SiteUrl}              ${Browser}
    Open Browser        ${SiteUrl}              ${Browser}
    Maximize Browser Window

Clik Sign Input
    Click link        ${link_signIn}

Enter UserName
    [Arguments]         ${username}
    Input Text          ${txt_loginUserName}        ${username}     

Enter Password
    [Arguments]         ${password}
    Input Text          ${txt_loginpassword}        ${password}

Click Button Sign In
    Click Button        ${button_Login}

Verify Succesfull Login
    Wait Until Element Contains     My account - My Store

Verify my account list
    [Documentation]             Verify my account list
    Element Should Be Visible   ${myAccount_list}

Close Browser
    Close All Browsers