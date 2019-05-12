*** Settings ***
Test Teardown     Close Browser
Library         SeleniumLibrary
Library         Dialogs
Resource        ../settings.robot

*** Variables ***
${NewsBtn}    //a[@href='/Forum/news.cgi' and @class='p7PMtrg']
${ForumsBtn}    //a[@href='/Forums/' and @class='p7PMtrg']
${NewsCombobox}    //ul[@class='p7PMhide']//li[@id='mm']/a[contains(@href,'/Forum/news.cgi')]
${ForumsCombobox}    //td/ul[@id='p7PMnav']/li/ul[@class='p7PMhide']/li[@id='mm']/a[contains(@href,'/Forums/')]

*** Test Cases ***
TC_003_Combobox
    Start Browser and Maximize   ${CFDOnline}    ${Browser}
    Mouse Over    ${NewsBtn}
    Verify Content of Combobox    ${NewsCombobox}    Index,Post News,Subscribe/Unsubscribe
    Sleep    3
    Wait Until Keyword Succeeds    5s    0.5s    Mouse Over    ${ForumsBtn}
    Sleep    10
    Verify Content of Combobox    ${ForumsCombobox}    Main CFD Forum,System Analysis,Structural Mechanics,Electromagnetics,CFD Freelancers,Hardware Forum,Lounge,Software User Forums,Pre-processors,Post-Processors,Special Topics,CFD Online Community
    Sleep    3

