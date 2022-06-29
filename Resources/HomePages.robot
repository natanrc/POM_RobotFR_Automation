*** Settings ***
Library         SeleniumLibrary
variables       ../PageObjects/Homepage_locator.yaml

*** Keywords ***
Open my Browserku
    [Arguments]         ${SiteUrl}              ${Browser}
    Open Browser        ${SiteUrl}              ${Browser}
    Maximize Browser Window

Verify Current Url Is Homepage Url
    [Documentation]             Verify current url is homepage url
    Location Should Be          ${SiteUrl} 

Verify Homepage Title 
    [Documentation]             Verify homepage title
    Element Should Be Visible   ${Title} 

Verify Contact No
    [Documentation]             Verify Contact Number
    #add test case id L01
    [Tags]                      L01
    Element Should Be Visible   ${ContactNo} 

Verify Logo
    [Documentation]             Verify Logo
    Element Should Be Visible   ${Logo}

Verify Searching text
    [Arguments]         ${search}
    Input Text          ${search_text}       ${validtext} 

Verify Button Searh
    [Documentation]             Verify Button Searching
    Element Should Be Visible   ${button_search}

Verify Shopping Cart
    [Documentation]             Verify Shopping Cart
    Click link                  ${Shopping_Cart_link}
    Element Should Contain      ${shopping_cart_page}               Your shopping cart    
    Click link                  ${link_home_page}  

Verify Order Categori WOMAN
    [Documentation]             Verify link order category WOMAN
    Click link                  ${Link_cat_women}
    Element Should Contain      ${Cat_women_page}                       Women    
    Click link                  ${link_home_page} 

Close my Browser
    Close All Browsers
