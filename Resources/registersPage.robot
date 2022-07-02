*** Settings ***
Library         SeleniumLibrary
variables       ../PageObjects/register_locators.yaml
Library         DebugLibrary

*** Keywords ***
Clik Sign Input
    Click Element               ${link_signIn}

Enter New Email
    [Arguments]                 ${myemail}
    #debug
    Input Text                  ${txt_email1}          ${myemail}

Click Button Sign Up
    Click Button                ${button_signup} 

#Section YOUR PERSONAL INFORMATION
Select Title
    Click Element               ${gender1}

Enter the Customer first Name
    Input Text                  ${txt_firstName}       ${firstName}

Enter the Customer Last Name
    Input Text                  ${txt_lastName}        ${lastName}       

Enter the email account
    Input Text                  ${txt_email2}          ${myemail}

Enter New Password 
    Input Text                  ${txt_password}        123qwe

Select Date of Birth
    Select From List By Index   ${day}          8
    Select From List By Index   ${month}        1
    Select From List By Value   ${years}        2004        

Click Newsletter and Receive special offer from our partners
    Click Element       ${newsletter}
    Click Element       ${partners}

#Section YOUR ADDRESS
Enter the first Name
    Input Text                  ${txt_firstName1}       ${firstName}

Enter the Last Name
    Input Text                  ${txt_lastName1}        ${lastName}  
Enter the Company Name
    Input Text                  ${txt_company}          ${company}

Enter address
    Input Text                  ${txt_address}          ${address}

Enter 2nd address
    Input Text                  ${txt_address2}         ${address}

Enter city
    Input Text                  ${txt_city}             ${city}

Select state
    Select From List By Value   ${select_state}         2

Enter Postal Code
    Input Text                  ${txt_postcode}         ${postcode}

Select country
    Select From List By Value   ${select_counnty}       21

Enter Additional Information
    Textarea Should Contain     ${Add_info}             ${addinfo}

Enter Home phone number
    Input Text                  ${txt_phone}            ${phone}

Enter Mobile phone number
    Input Text                  ${txt_mobile}           ${mobile}

Enter Assign an address alias for future reference
    Input Text                  ${assign}               ${assing_alias}

Click Button Register
    Click Button                ${btn_registers}