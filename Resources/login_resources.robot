*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com
${BROWSER}      chrome

*** Keywords ***
Open my Browser
        Open Browser    ${LOGIN URL}    ${BROWSER}
        Maximize Browser Window

Close my Browser
        Close All Browsers

Open Login Page
        Go To    ${LOGIN URL}
Input username
        Wait Until Element Is Visible    id:Email   5s
        [Arguments]     ${username}
        Input Text    id:Email    ${username}
Input pwd
        [Arguments]     ${password}
        Input Text    id:Password       ${password}
Click Login Button
        Click Element    xpath://button[@type="submit"]
Click Logout Link
        Click Link    Logout
Error Message Should Be Visible
        Page Should Contain    Login was unsuccessful
Dashboard Page Should Be Visible
        Page Should Contain    Dashboard






