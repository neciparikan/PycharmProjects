*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register

*** Test Cases ***
Speed Test
#    ${speed}=   get selenium speed
#    log to console      ${speed}
    open browser   ${url}    ${browser}
    click element   xpath://*[@id="details-button"]
    click link      xpath://*[@id="proceed-link"]
    maximize browser window

    ${time}=    get selenium timeout
    log to console    ${time}

    set selenium implicit wait  3s

    ${implicitTime}=    get selenium implicit wait
    log to console    ${implicitTime}

    set selenium timeout    5s
    wait until page contains     Register

#    set selenium speed  1s

    select radio button     Gender      M

    input text      name:FirstName      Necip
    input text      name:LastName      Arikan
    input text      name:Email      neciparikan@gmail.test
    input text      name:Password     ncp123
    input text      name:ConfirmPassword     ncp123

    close browser
#    ${speed}=   get selenium speed
#    log to console      ${speed}

