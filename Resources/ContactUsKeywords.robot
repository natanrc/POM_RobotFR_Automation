*** Settings ***
Library         SeleniumLibrary
variables       ../PageObjects/contactUs_locators.yaml


*** Keywords ***
Open my Browserku
    [Arguments]         ${SiteUrl}              ${Browser}
    Open Browser        ${SiteUrl}              ${Browser}
    Maximize Browser Window

Clik Contact Us link
    Click link        ${link_ContactUs}

Select Subject Heading
    Select From List By Label   id_contact          Webmaster

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