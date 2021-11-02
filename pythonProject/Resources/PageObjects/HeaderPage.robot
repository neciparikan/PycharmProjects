*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${search_text}  mobile


*** Keywords ***
Input Search Text and Click Search
    Input Text  xpath://.....  mobile
    Press Keys  xpath://.....  RETURN

Click on Advanced Search Link
    Click Element  //