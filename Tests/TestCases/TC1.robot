*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/


*** Test Cases ***
LoginTest
    open browser    ${url}   ${browser}
    maximize browser window
    LoginToApplication
    sleep   2s
    close browser


TestingInputBox
    open browser    ${url}   ${browser}
    maximize browser window
    title should be    nopCommerce demo store
    click link  xpath://a[contains(text(),'Log in')]

    ${"email_txt"}  set variable    id:Email

    element should be visible   ${"email_txt"}
    element should be enabled   ${"email_txt"}

    input text  ${"email_txt"}  neciparikan@gmail.test
    sleep   4s
    clear element text  ${"email_txt"}
    sleep   4s

    close browser


*** Keywords ***
LoginToApplication
    click link  xpath://a[contains(text(),'Log in')]
    input text  id:Email    neciparikan@gmail.test
    input text  id:Password     Test@123
    click element    xpath://button[contains(text(),'Log in')]