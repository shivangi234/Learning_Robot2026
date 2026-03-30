*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
InputBoxTest
        open browser    https://demo.nopcommerce.com/login  chrome
        maximize browser window
        title should be     nopCommerce demo store. Login

        ${"email_txt"}      set variable     id:Email
        ${"pwd_txt"}        set variable    id:Password

        element should be visible    ${"email_txt"}
        element should be enabled    ${"email_txt"}

        element should be visible       ${"pwd_txt"}
        Element Should Be Enabled       ${"pwd_txt"}

        input text    ${"email_txt"}    shivangi.sahu@gmail.com
        sleep   5
        input text    ${"pwd_txt"}    Sony@123
        Sleep    5


#        simple- input text     locator     value
#        input text    id:Email    shivangi@gmail.com
#        input password    id:Password    Sony123
*** Keywords ***