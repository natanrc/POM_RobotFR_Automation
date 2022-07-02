*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/registersPage.robot
Suite Setup                         Open Browser                     ${SiteUrl}             ${Browser}
Suite Teardown                      Close Browser

*** Variables ***
${Browser}              Chrome
${SiteUrl}              http://automationpractice.com/index.php
${myemail}              natants@gmail.com
${firstName}            Natan
${lastName}             DOJO
${company}              DOJOBOX
${address}              Sei Beduk, Kepulauan Riau
${city}                 Batam
${postcode}             29437
#${addinfo}              Addres for learning
${phone}                07707778
${mobile}               0822000
${assing_alias}         piayu

*** Test Cases ***
Register Form Test
    Maximize Browser Window
    Clik Sign Input

Input New Email 
    Enter New Email                     ${myemail}
    Click Button Sign Up

Fill Personal Information
    Wait Until Element Contains         ${heading_page}                   CREATE AN ACCOUNT
    Select Title
    Enter the Customer first Name                   
    Enter the Customer Last Name              
    Enter the email account                 
    Enter New Password
    Select Date of Birth
    Click Newsletter and Receive special offer from our partners
    sleep       5s

Fill Complete address
    Enter the first Name
    Enter the Last Name
    Enter the Company Name
    Enter address
    Enter 2nd address
    Enter city
    Select state
    Enter Postal Code
    Select country
    #Enter Additional Information
    Enter Home phone number
    Enter Mobile phone number
    Enter Assign an address alias for future reference
    sleep       5s
    Click Button Register
    sleep       5s
