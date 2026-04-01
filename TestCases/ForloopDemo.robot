*** Test Cases ***
#ForLoop1

#        old/deprycated version
#        : FOR   ${i}    IN RANGE    1   10
#        \   Log to console  ${i}


#       in python -
#       for i in range(1,10):
#           print(i)

#       in Robot
#        FOR    ${i}    IN RANGE    1    10
#            Log To Console    ${i}
#        END

#ForLoop2
#        FOR    ${i}    IN    1  2   3   4   5   6   7   8
#            Log To Console    ${i}
#        END

#Forlop3withList
#        @{items}    Create List     1   2   3   4   5
#         FOR    ${i}    IN    @{items}
#             Log To Console  ${i}
#         END

#Forloop4
#        FOR    ${i}    IN       john   david   smith   scott
#            Log To Console  ${i}
#        END
#
#Forloop5
#        @{names}    Create List     john   david   smith   scott
#        FOR    ${i}    IN       @{names}
#            Log To Console  ${i}
#        END

forloop6withExit
        @{items}    Create List     1   2   3   4   5
        FOR    ${i}    IN    @{items}
            Log To Console    ${i}
           Exit For Loop If    ${i}==3
        END