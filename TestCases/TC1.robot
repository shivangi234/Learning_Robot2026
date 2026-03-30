*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
LoginTest
    open browser    https://demo.nopcommerce.com/login    chrome
    #click link  xpath://a[@class='ico-login']
#    wait until element is visible    name:Email     10s
    maximize browser window
    sleep   2
    input text  name:Email   shivangi1@gmail.com
    sleep   2
    input text  id:Password     sony1234
    sleep   2
    click element    xpath://button[text()='Log in']
    sleep   2
    close browser


*** Keywords ***