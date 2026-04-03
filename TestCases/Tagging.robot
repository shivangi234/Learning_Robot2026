*** Settings ***

*** Test Cases ***

TC1 User RegistrationTest
        [Tags]      regression
        Log To Console    This is user reg test
        Log To Console    user registration test is over
TC2 LoginTest
        [Tags]      sanity
        Log To Console    This is Login test
        Log To Console    Login test test is over
TC3 Change user settings
        [Tags]      regression
        Log To Console    This is changein user setting test
        Log To Console    Change user test test is over
TC4 Logout Test settings
        [Tags]      sanity
        Log To Console    This is Logout test
        Log To Console    Logout test test is over


#       📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
#        use - To group testcases
#        README
#        ⬇️⬇️⬇️⬇️⬇️Command to run⬇️⬇️⬇️⬇️⬇️
#        robot --include=sanity Tagging.robot           INCLUDE
#        robot --include=regression Tagging.robot       INCLUDE
#        robot -i sanity -i regression Tagging.robot    INCLUDE
#        robot -e regression Tagging.robot              EXCLUDE
#        robot -e regression -i sanity Tagging.robot    INCLUDE & EXCLUDE
