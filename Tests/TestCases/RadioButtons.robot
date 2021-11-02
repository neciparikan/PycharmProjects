*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  2s

 #Selecting Radio Buttons   #name   #value
    select radio button     sex     Female
    select radio button     exp     5

#Selecting Radio Buttons   #name
    select checkbox     BlackTea
    select checkbox     RedTea

 #UnSelecting Radio Buttons   #name
    unselect checkbox   BlackTea

    close browser