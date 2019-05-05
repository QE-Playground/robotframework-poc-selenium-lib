*** Settings ***
Test Teardown     Close Browser
Library         SeleniumLibrary
Library         Dialogs
Resource        ../settings.robot

*** Variables ***
${searchForm}    //*[@id='search']//input

*** Test Cases ***
TC_002_ScrollDown
    Start Browser and Maximize   ${StackOverFlow}    ${Browser}
    Sleep    5
    Scroll Down Webpage
    Sleep    2
    Input Text    ${searchForm}    robot framework
    Sleep    2
    Press Enter Key
    Sleep    2
    Scroll Down Webpage
    Sleep    10

