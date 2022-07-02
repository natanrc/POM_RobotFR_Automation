*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/ContactUsKeywords.robot

*** Variables ***
${Browser}              Chrome
${SiteUrl}              http://automationpractice.com/index.php?controller=contact
${email}                natantondok@gmail.com
${order}                Dress
${message}              dojobox write here

*** Test Cases ***
I Verify form contact us
    Open my Browser               ${SiteUrl}              ${Browser} 
    #Clik Contact Us link  
    Select Subject Heading   
    sleep       2s       
    Input Email address           ${email}            
    Input Order reference         ${order} 
    Input message                 ${message}
    Click Button message
    sleep       5s
    Close my Browser                
