*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
HandlingAlerts
    open browser   ${url}    ${browser}
    maximize browser window
    click element   xpath://*[@id="cookieChoiceInfo"]/div
    sleep   10s
    handle alert    accept
