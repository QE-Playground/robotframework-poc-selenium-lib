*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${searchTbx}    //*[contains(@class,'gLFyf gsfi')]
${luckyBtn}    name:btnI

${searchBtn}    value:Google Search

*** Keywords ***
enterSearchWord
  [Arguments]   ${text}
  input text    ${searchTbx}    ${text}

getSearchTbxVal
  ${mystring}   get element attribute   ${luckyBtn}    value
  [Return]    ${mystring}

select English Language
    Run Keyword And Ignore Error    Wait Until Keyword Succeeds    3secs    1sec    Click on English Button

Click on ${languageBtn} Button
    Click Element    //div[@id='SIvCob']//*[contains(text(),'${languageBtn}')]