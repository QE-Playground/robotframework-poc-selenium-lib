*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${MainPage}  https://google.com/
${StackOverFlow}  http://www.stackoverflow.com/
${CFDOnline}  https://www.cfd-online.com/

*** Keywords ***
Start Browser and Maximize
    [Arguments]    ${URL}    ${chosenBrowser}
    open browser    ${URL}    ${chosenBrowser}
    maximize browser window

Scroll Down Webpage
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

Press Enter Key
    Press Key    name=q    \\13

Verify Content of Combobox
    [Arguments]    ${locator}    ${content}
    @{items}=    Execute Javascript    var arr = new Array(); arr = '${content}'.split(","); return arr;
    ${xpath}=    Set Variable    ${locator}
    ${count}=    Get Element Count    ${xpath}
    FOR    ${i}    IN RANGE    1    ${count} + 1
        ${name}=    Get Text    xpath=(${xpath})[${i}]
        ${j}    Evaluate    ${i} - 1
        Should Be Equal As Strings    @{items}[${j}]    ${name}
    END

