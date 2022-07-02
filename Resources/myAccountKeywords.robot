*** Settings ***
Library         SeleniumLibrary
variables       ../PageObjects/myAccount_locators.yaml
Library         DebugLibrary             

*** Keywords ***
Enter UserName
    [Arguments]         ${username}
    Input Text          ${txt_loginUserName}        ${username}     

Enter Password
    [Arguments]         ${password}
    Input Text          ${txt_loginpassword}        ${password}

Click Button Sign In
    Click Button        ${button_Login}

Verify Succesfull Login
    Wait Until Element Contains     //div[class="header_user_info"]                 Nataniel Tondok

Verify list
    Element Should Contain          //div[@class="col-xs-12 col-sm-6 col-lg-4"]