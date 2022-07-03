*** Settings ***
Library         SeleniumLibrary
variables       ../PageObjects/Order_locators.yaml
Library         DebugLibrary

*** Keywords ***
Clik Sign Input
    Click Element       ${link_signIn}

Enter UserName
    [Arguments]         ${username}
    Input Text          ${txt_loginUserName}        ${username}     

Enter Password
    [Arguments]         ${password}
    Input Text          ${txt_loginpassword}        ${password}

Click Button Sign In
    Click Button        ${button_Login}

Select Order Categori WOMAN
    [Documentation]             Verify link order category WOMAN
    Click link                  ${Link_cat_women}
    Element Should Contain      ${Cat_women_page}                       Women  

Select 1 product
    Click Element                   ${blouse_product}
    sleep       5s
    Click Element                   ${btn_addcart}
    Click Element                   ${btn_checkout}
    Click Element                   ${btn_checkout1}
    Select From List By Value       ${address_del}        711482 
    Click Element                   ${btn_process_adr} 
    Click Element                   ${check_agree}
    Click Element                   ${btn_checkout2}
    Click Element                   ${btn_pay_byBank}
    Click Element                   ${btn_confirm_order}
