All the commands have to remember

Setup
1.  Install Python
2. Install Pycharm
3. Install pip install selenium         [Terminal & Project Interpreter]
4. Install pip install robotframework    [Terminal & Project Interpreter]
5. Install  pip install robotframework-seleniumlibrary          [Terminal & Project Interpreter]
6. Install plugin - Hyper Robot Framework Support
Run Robot file
   1. robot filename.robot                         [run a specific file]
   2. robot TestCases\                             [running all files in TestCases]
   3. robot TestCases\Reg*.robot                   [running the files which name starts with Reg]
   4. robot -d reports/file1  file1.robot          [Create proper report inside report folder]


        For Parallel execution
            1. pip install -U robotframework-pabot       [command prompt]
            2. pip install robotframework-pabot          [in pycharm terminal]
            3. Add python interpreter add the package to project
            go to ---> robotframework-pabot website ,read the description
        To run
            4. pabot --processes 2 TestCases\*.robot
            5. first check how many directories are there
                dir TestCases\Reg*.robot
            6. run this command
             pabot --processes 2 TestCases/Reg*.robot
            7. for report generation
               pabot --processes 2 --outputdir Results/RegReports TestCases/Reg*.robot



        Keywords
            
           1.connect Browser        Open Browser
           2.Handle input box       Input Text
           3.Handle List            Select From ListBy Label/Index/Value
           4.Browser Navigation     Open Browser    Go To    Go Back
           5.Capture Screenshot     Capture Page Screenshot/Capture Element Screenshot  locator
           6.Close browser          Close Browser/Close All Browser
           7.Handle frame           Select Frame /Unselct Frame
           8.Handle Alert           Handle Alert accept / Handle Alert dismiss
           9.Mouse Operations       right click - Open Context Menu / Double click - Double Click Element
           10.Drag and drop         Drag And Drop    id:[source]    id:[destination]
           11.RadioButton           Select Radio Button     [name of radio button]      [value]
           12.Checkbox              Select Checkbox     
           13.Multiple tab          Select Window
      