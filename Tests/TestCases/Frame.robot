*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://seleniumhq.github.io/selenium/docs/api/java/index

*** Test Cases ***
Testing Frames
    open browser   ${url}    ${browser}
    maximize browser window
    click element   xpath://*[@id="cookieChoiceInfo"]/div
    sleep   10s
    handle alert    accept
