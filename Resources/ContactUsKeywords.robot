*** Settings ***
Library         SeleniumLibrary
variables       ../PageObjects/contactUs_locator.yaml
Library         DebugLibrary

*** Keywords ***
Open my Browser
    [Arguments]         ${SiteUrl}              ${Browser}
    Open Browser        ${SiteUrl}              ${Browser}
    Maximize Browser Window

#Clik Contact Us link
#    Click Element      ${link_ContactUs}

Select Subject Heading
    #debug
    Element Should Not Be Visible       ${dropDown_subject}
    Select From List By Index           ${dropDown_subject}        2
    List Selection Should Be            ${dropDown_subject}        Webmaster

Input Email address
    [Arguments]         ${email}
    Input Text          ${txt_email}                ${email} 

Input Order reference
    [Arguments]         ${order}
    Input Text          ${txt_orderReference}       ${order} 

Input message
    [Arguments]         ${message}        
    Input Text          ${txt_message}              ${message}

Click Button message
    Click Button                ${button_message}
    Element Should Contain      ${cs_contactUs}             CUSTOMER SERVICE - CONTACT US

Close my Browser
    Close All Browsers