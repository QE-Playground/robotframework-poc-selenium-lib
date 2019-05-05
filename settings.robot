*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${MainPage}  https://google.com/
${StackOverFlow}  http://www.stackoverflow.com/

*** Keywords ***
Start Browser and Maximize
    [Arguments]    ${URL}    ${chosenBrowser}
    open browser    ${URL}    ${chosenBrowser}
    maximize browser window

Scroll Down Webpage
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

Press Enter Key
    Press Key    name=q    \\13