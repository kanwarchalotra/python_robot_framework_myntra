*** Settings ***
Library    SeleniumLibrary    
Resource    C:/Users/knwrp/OneDrive/Desktop/PYRobotFramework-lifestyle/locators/locators.robot

*** Keywords ***

open myntra
    Open Browser    ${url}    ${bdriver}    options=add_argument("--disable-notifications")
    Maximize Browser Window
    
myntra HomePage
    ${count} =    Get Element Count    ${listofmenubar}
    Log To Console    Elementcount:${count} 
    Sleep    10s
    Click Element    ${firstElementClick}
    Sleep    3s
    ${current_url}=    Get Location
    Should Be Equal    ${current_url}    https://www.myntra.com/shop/men

    ${getlist} =    Get WebElements    ${SectionsList}
    FOR  ${element}  IN  @{getlist}
    ${text}=    Get Text    ${element}
    Log To Console   total sections printed are :: ${text}
    END

    Sleep    5s
    # coursel option removed on 23-07-2023
    # Click Element    ${courselclick}
    # ${textofcour}=    Get Text    ${courselclick}
    # Log To Console    coursal clicked it ${textofcour}
    # Element Should Be Enabled    ${courselclick}
    Sleep    5s
    Input Text    ${productSearch}    Marvel
    Sleep    3S
    Press Keys    ${productSearch}    ENTER
    Sleep    3s



myntra productpage
    Click Element    ${mensectionfilter}
    Sleep    4s
    ${ActProdName}    Get Text    ${clickonfirstprod}
     Log To Console    ${ActProdName}
    Element Should Contain    ${prodName}    Marvel Comic Printed T-shirt
    sleep    5s
    Click Element    ${clickonfirstprod}
    Sleep    5s
    ${handles}    Get Window Handles
    Log To Console    ${handles}
    Switch Window    ${handles}[1]
    ${title}    Get Title
    Log To Console    ${title}
    Sleep    5s



myntra wishlistpage
    Click Element    ${wishlist}
    Input Text    ${loginMobNu}    8073735930
    Sleep    5s
    Click Element    ${continueBttn}
    Sleep    5s
    #Click Element    ${popup_mesg}
    Sleep    50s
    Click Element    ${continueBttn}
    Sleep    25s
    Click Element    ${addtowishlist}
    Sleep    5s
    Click Element    ${removeFrwishlist}
    Sleep    15s
    Element Should Be Visible    ${emptywishlistMesg}
    Go Back
    Sleep    5s


myntra productdetailspage
    Sleep    10s
    Element Text Should Be    ${product_details_1}    Black Tshirt for men
    Element Text Should Be    ${product_details_2}    Marvel comic printed
    Element Text Should Be    ${product_details_3}    Regular length
    Element Text Should Be    ${product_details_4}    Round neck
    Element Should Contain    ${product_details_5}    Short, Drop-Shoulder Sleeves  
    Element Text Should Be    ${product_details_6}    Knitted cotton fabric
    Element Should Contain    ${ppdname}    Men Black Marvel Comic Printed Pure Cotton T-shirt       
    Element Should Contain    ${productPrice}    1049
    Click Element    ${selectsize}
    Sleep    8s
    Click Element    ${addtobag}
    Sleep    5s
    Click Element    ${bag}
    Sleep    5s

myntra addtocartpage
    Sleep    5s
    Click Element    ${clickpopup}
    Sleep    7s
    Element Should Contain    ${addtocartPrice}    1,059
    Sleep    3s
    Click Element    ${remove}
    Sleep    5s
    Click Element    ${remove1}
    Sleep    3s
    Element Should Be Visible    ${emptyText}
    Sleep    5s
    Click Element    ${logo}


