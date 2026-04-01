*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
GetAllLinksTest
        Open Browser    https://demo.guru99.com/test/newtours/   chrome
        Maximize Browser Window

#       To count how many links are present in the website
        ${AllLinksCount} =   Get Element Count    xpath://a
        Log To Console    ${AllLinksCount}

#       To extract the link text from all the links
        @{LinkItems}    Create List

        FOR    ${i}    IN RANGE    1    ${AllLinksCount + 1}
            ${linkText} =    Get Text    xpath:(//a)[${i}]
            IF    '${linkText}' != ''
                Log To Console    ${linkText}
            END
        END