*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup     Open my Browser
Suite Teardown      Close my Browser
Test Template       Invalid login

*** Test Cases ***        username                password
Right user empty pwd      admin@yourstore.com     ${EMPTY}
Right user wrong pass     admin@yourstore.com     xyz
Wrong user right pass     adm@yourstore.com       admin
Wrong user empty pass     adm@yourstore.com       ${EMPTY}
Wrong user wrong pass     adm@yourstore.com       xyz


*** Keywords ***
Invalid login
        [Arguments]     ${username}     ${password}
        Input username    ${username}
        Input pwd       ${password}
        Click Login Button
        Error Message Should Be Visible
