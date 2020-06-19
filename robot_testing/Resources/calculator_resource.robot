***Settings***
Documentation    A resource file with reusable keywords and variables.
...
...              The system specific keywords created here form our own
...              domain specific language. They utilize keywords provided
...              by the imported SeleniumLibrary.

Library          SeleniumLibrary
Variables        ../Page_Objects/Locators.py

***Variables***
${siteUrl}       http://localhost/calculator.php
${browser}       chrome
${DELAY}         0.1

***Keywords***
open the browser
    open browser                 ${siteUrl}         ${browser}
    Set Selenium Speed           ${DELAY}
    maximize browser window

Enter the numbers
    [Arguments]                  ${num1}            ${num2}
    input text                   ${txt_num1}        ${num1}
    input text                   ${txt_num2}        ${num2}

Choose operator
    [Arguments]                  ${operator}
    select from list by label    ${drp_operator}    ${operator}

Click submit button
    click button                 ${btn_submit}

Should Be Equal To
    [Arguments]                  ${expected}
    ${output}                    Get Text           ${txt_result}
    Should Be Equal              ${output}          ${expected}      "they are not equal"

close the browser
    close browser