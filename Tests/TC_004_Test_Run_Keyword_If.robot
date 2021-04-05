*** Variables ***
${english}    english
${french}    french

*** Test Cases ***
TC_004 Test Run Keyword If
    ${language}    Set Variable    ${english}
    Log    ${language}
    Run Keyword If    '${language}' == 'english'    Run Keywords
    ...    Assignment and log    ${language}    ${french}
    ...    AND    Log    ${language}

*** Keywords ***
Assignment and log
    [Arguments]    ${key}    ${value}
    ${key}    Set Variable    ${value}
    Log    ${key}


