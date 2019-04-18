*** Settings ***
Test Teardown     Close Browser
Library           SeleniumLibrary

*** Test Cases ***
Register_an_account
    [Documentation]    User can register an account
    [Tags]    Register_an_account
    Given Open Browser    http://demo.guru99.com/test/newtours/index.php    chrome
    Then Title Should Be    Welcome: Mercury Tours
    When Maximize Browser Window
    Then Log To Console    Register an account
    And Click Element    link=REGISTER
    Given Verify necessary fields which represent personal information
    Then Fill in personal information
    And Register username and password

*** Keywords ***
Verify necessary fields which represent personal information
    Page Should Contain Element    name=firstName
    Page Should Contain Element    name=lastName
    Page Should Contain Element    name=phone
    Page Should Contain Element    id=userName
    Page Should Contain Element    name=address1
    Page Should Contain Element    name=city
    Page Should Contain Element    name=state
    Page Should Contain Element    name=postalCode
    Page Should Contain Element    name=country
    Page Should Contain Element    name=email

Fill in personal information
    Input Text    name=firstName    Truong
    Input Text    name=lastName    Dang
    Input Text    name=phone    012345678
    Input Text    id=userName    dangtruong080593@gmail.com
    Input Text    name=address1    111 Nguyen Dinh Chinh, P15
    Input Text    name=city    PN
    Input Text    name=state    HCM
    Input Text    name=postalCode    9999
    Select From List By Value    name=country    VIETNAM

Register username and password
    Input Text    name=email    Truong
    Input Password    name=password    123456
    Input Password    name=confirmPassword    123456
    Click Button    name=submit
    Wait Until Page Contains    Thank you for registering    10s
