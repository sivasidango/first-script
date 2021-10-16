*** settings ***
Library     SeleniumLibrary
Library    OperatingSystem

Suite Teardown     Close Browser
*** variables ***

*** Tasks ***
User Can Search for products
     [Tags]      Search Ipad
     @{url_and_browser} =    Create List    https://www.amazon.com    chrome
     Begin Web Test     @{url_and_browser}

*** keywords ***
Begin Web Test
     [Arguments]     @{url_and_browser}
     Log Many     ${url_and_browser}[0]
     Open Browser    ${url_and_browser}[0]    ${url_and_browser}[1]
     Input Text    id=twotabsearchtextbox    Ipad
     Click Button    id=nav-search-submit-button
     Click Link    xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/span/div/div/div/div/div[2]/div[2]/div/div/div[1]/h2/a
     Click Button    id=add-to-cart-button