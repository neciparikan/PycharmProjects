*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Results
    Input Text  id:gh-ac  mobile
    Press Keys  id:gh-btn  RETURN
    Page Should Contain  results for mobile

Filter results by condiiton
    Mouse Over  //*[@id="nid-5DL-4"]/button/span/span
    Sleep  3s
    Mouse Down  //*[@id="nid-5DL-4"]/button/span/span
    Click Element  //*[@id="w7"]/div/ul/li[2]

#Verify filter Results
#    Element Should Contain