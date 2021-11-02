*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Handling DropDowns and Lists
    open browser   ${url}    ${browser}
    maximize browser window
    set selenium speed  2s

    select from list by label   continents  Australia
    select from list by index   continents      6


#List Box
    select from list by label   selenium_commands   Switch Commands
    #Multiple Selection
    select from list by label   selenium_commands   WebElement Commands
    unselect from list by label     selenium_commands   Switch Commands

    close browser

#*** Keywords ***
#Select Continents
#    [Arguments]  @{continents}
#    @{continents}   set variable    id:continents
#    ${cnt}=  Get length   @{continents}
#    should be equal as numbers  ${cnt}  6


