*** Settings ***
Library     SeleniumLibrary
Library         DataDriver      ../TestData/login.xlsx  sheet_name=Sheet1
Resource    ../Resources/login_resources.robot
Suite Setup     Open my Browser
Suite Teardown      Close my Browser
Test Template       Invalid login

*** Test Cases ***
LoginTestWithExcel using    ${username}     ${password}

*** Keywords ***
Invalid login
    [Arguments]     ${username}     ${password}
    Input username    ${username}
    Input pwd    ${password}
    Click Login Button
    Error Message Should Be Visible

