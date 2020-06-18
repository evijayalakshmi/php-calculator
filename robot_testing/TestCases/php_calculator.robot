*** Settings ***
Library  SeleniumLibrary
Resource    ./../Resources/calculator_resource.robot

*** Variables ***
${browser}  chrome
${siteUrl}  http://localhost/calculator.php

*** Test Cases ***
CalculatorTest
    open the browser    ${siteUrl}  ${browser} 
    Enter the numbers   4   4
    Choose operator     *
    Click submit button
    close the browser