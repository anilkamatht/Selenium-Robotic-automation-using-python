*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***
RegTest

        open browser    https://demowebshop.tricentis.com/register  chrome
        maximize browser window
        ${timout}=   get selenium timeout
        log to console      ${timout}
        set selenium timeout    10 seconds
        #wait until page contains    Register
        wait until page contains    Registration
        select radio button    Gender   M
        input text    name:FirstName    David
        input text    name:LastName     Jhon
        input text    name:Email    anhc@gmail.com
        input text    name:Password    davidjhon
        input text    name:ConfirmPassword    davidjhon



