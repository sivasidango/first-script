*** settings ***
Library     SeleniumLibrary
Library    OperatingSystem

Suite Teardown     Close Browser
*** variables ***

*** Tasks ***
User Can Search for products
     @{url_and_browser} =    Create List    https://www.amazon.com    chrome
     Begin Web Test     @{url_and_browser}

*** keywords ***
Begin Web Test
     [Arguments]     @{url_and_browser}
     Log Many     ${url_and_browser}[0]
     Open Browser    ${url_and_browser}[0]    ${url_and_browser}[1]
     Input Text    id=twotabsearchtextbox    Ipad
     Click Button    id=nav-search-submit-button
