***Settings***
Library     SeleniumLibrary
Variables   ../Page_Objects/Locators.py

# ***Variables***
# ${siteUrl}    http://localhost/calculator.php
# ${browser}      chrome

***Keywords***
open the browser
    [Arguments]     ${siteUrl}  ${browser}
    open browser    ${siteUrl}  ${browser}
    maximize browser window

Enter the numbers
    [Arguments]     ${num1}     ${num2}
    input text  ${txt_num1}     ${num1}
    input text  ${txt_num2}     ${num2}

Choose operator
    [Arguments]     ${operator}
    select from list by label   ${drp_operator}     ${operator}

Click submit button
    click button    ${btn_submit}

close the browser
    close browser



