*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
Scrolling Test
        Open Browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
        Maximize Browser Window
#        scroll page into a particular pixel
#        Execute Javascript  window.scrollTo(0,4500)

#       scroll the page till find that element
#        Scroll Element Into View    xpath://img[@alt='Flag of India']

#       scroll the page frpm top to till end of the page
        Execute Javascript  window.scrollTo(0,document.body.scrollHeight)

        Sleep    3s

#       Scroll again back to top
        Execute Javascript  window.scrollTo(0,-document.body.scrollHeight)
