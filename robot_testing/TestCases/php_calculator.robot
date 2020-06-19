*** Settings ***
Documentation     Tests to check the calculator acceptance

Resource          ./../Resources/calculator_resource.robot

Suite Setup       open the browser
Suite Teardown    close the browser

*** Test Cases ***
To add two integers and display the result
    [Tags]                      add
    Enter the numbers           135                       100
    Choose operator             +
    Click submit button
    Should Be Equal To          235

To add two decimal numbers and display the result
    [Tags]                      add
    Enter the numbers           12.2                      100.0
    Choose operator             +
    Click submit button
    Should Be Equal To          112.2

To add exponential numbers and display the result
    [Tags]                      add
    Enter the numbers           1.33e+1                   10
    Choose operator             +
    Click submit button
    Should Be Equal To          23.3

To subtract two integers and display the result
    [Tags]                      sub
    Enter the numbers           1000                      1
    Choose operator             -
    Click submit button
    Should Be Equal To          999

To subtract two decimal numbers and display the result
    [Tags]                      sub
    Enter the numbers           122.2                     10.1
    Choose operator             -
    Click submit button
    Should Be Equal To          112.1

To subtract exponential number and display the result
    [Tags]                      sub
    Enter the numbers           1e-1                      1
    Choose operator             -
    Click submit button
    Should Be Equal To          -0.9

To multiply two integers and display the result
    [Tags]                      mul
    Enter the numbers           5000                      855
    Choose operator             *
    Click submit button
    Should Be Equal To          4275000

To multiply decimal number and display the result
    [Tags]                      mul
    Enter the numbers           50.5                      5
    Choose operator             *
    Click submit button
    Should Be Equal To          252.5

To multiply exponential number and display the result
    [Tags]                      mul
    Enter the numbers           1e+1                      855
    Choose operator             *
    Click submit button
    Should Be Equal To          8550

To divide two integers and display the result
    [Tags]                      div
    Enter the numbers           5                         500
    Choose operator             /
    Click submit button
    Should Be Equal To          0.01

To divide decimal number and display the result
    [Tags]                      div
    Enter the numbers           1                         0.1
    Choose operator             /
    Click submit button
    Should Be Equal To          10

To divide exponential number and display the result
    [Tags]                      div
    Enter the numbers           3e+1                      5
    Choose operator             /
    Click submit button
    Should Be Equal To          6


To divide any number with zero
    [Tags]                      divbyzero
    @{numList}                  Create List               5           10.5    1e-1    -5    -10000.5
    : FOR  ${item}  IN  @{numList}
    \    Enter the numbers      ${item}                   0
    \    Choose operator        /
    \    Click submit button
    \    Should Be Equal To     Cannot divide by zero

To test multiple FOR Loop Test
    @{LIST1}                    Create List               1           +       2       3     2           *    5    10    7    -    -1    8
    : FOR  ${Item1}  ${Item2}  ${Item3}  ${Item4}  IN  @{LIST1}
    \    Enter the numbers      ${Item1}                  ${Item3}
    \    Choose operator        ${Item2}
    \    Click submit button
    \    Should Be Equal To     ${Item4}
    Log                         Item iteration is over