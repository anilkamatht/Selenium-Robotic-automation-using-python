*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***
RegTest

        open browser    https://demowebshop.tricentis.com/register  chrome
        maximize browser window
        ${implicttime}=    get selenium implicit wait
        log to console  ${implicttime}
        set selenium implicit wait  10 seconds
        ${implicttime}=    get selenium implicit wait
        log to console  ${implicttime}
        select radio button    Gender   M
        input text    name:FirstName1    David
        input text    name:LastName     Jhon
        input text    name:Email    anhc@gmail.com
        input text    name:Password    davidjhon
        input text    name:ConfirmPassword    davidjhon