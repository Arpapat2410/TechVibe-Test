*** Settings ***
Library     SeleniumLibrary
Library    XML

*** Variables ***
${BROWSER}          Chrome
${URL}              http://localhost:3000
${GOOGLE_USERNAME}         644259044@webmail.npru.ac.th
${GOOGLE_PASSWORD}         1739902024001
${GITHUB_USERNAME}         Arpapatzamak54321@gmail.com
${GITHUB_PASSWORD}         Aon0972982140

*** Test Cases ***
Search Google and Verify Results
    [Documentation]    Test case for SignIn Google
    Open WebSite
    Verify SignIn Google

*** Test Cases ***
Search Google and Verify Results
    [Documentation]    Test case for SignIn Github
    Open WebSite
    Verify SignIn Github


*** Keywords ***
Open WebSite
    Open Browser    ${URL}    ${BROWSER}

Verify SignIn Google
    Click Element    xpath=/html/body/div[1]/nav/div/div[2]/button[1]/a
    Sleep    5
    Click Element    xpath=/html/body/div[2]/div/div/div/button[1]
    Sleep    5
    Input Text    xpath=//*[@id="identifierId"]    ${GOOGLE_USERNAME}
    Sleep    5
    Click Element    xpath=//*[@id="identifierNext"]/div/button
    Sleep    5
    Input Text    xpath=//*[@id="password"]/div[1]/div/div[1]/input    ${GOOGLE_PASSWORD}
    Sleep    5
    Click Element    xpath=//*[@id="passwordNext"]/div/button
    Sleep    5

Verify SignIn Github
    Click Element    xpath=/html/body/div[1]/nav/div/div[2]/button[1]/a
    Sleep    5
    Click Button    xpath=/html/body/div[2]/div/div/div/button[2]
    Sleep    5
    Element Should Contain    xpath=//*[@id="login"]/div[3]/form/label    Username or email address
    Input Text    xpath=//*[@id="login_field"]    ${GITHUB_USERNAME}
    Sleep    2
    Element Should Contain    xpath=//*[@id="login"]/div[3]/form/div/label    Password
    Input Password    xpath=//*[@id="password"]    ${GITHUB_PASSWORD}
    Sleep    5
    Click Button    xpath=//*[@id="login"]/div[3]/form/div/input[13]
    Sleep    5
