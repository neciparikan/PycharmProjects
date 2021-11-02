*** Settings ***
Documentation  'Call Method' keyword demo
Library           Collections
Variables  Calculator.py

*** Variables ***
@{numbers}         3    1    2

*** Test Cases ***
Basic Calculator
    ${addition}=  Call Method  ${cal}  add  20  40
    Should Be Equal As Numbers   ${addition}   60

    ${test}=  Call Method  ${cal}  findSmallestInt  ${numbers}
    Should Be Equal As Numbers   ${test}   1

    ${is_contains_apple}=  Call Method  ${cal}  kwargs_demo_1  orange  mango  Apple  Kiwi
    Should Be True  ${is_contains_apple}==True

    ${addition}=  Call Method  ${cal}  add  30  40
    Should Be Equal As Numbers   ${addition}   70

    ${is_contains_fruit_mango}=  Call Method  ${cal}  kwargs_demo_2  name=abc  salary=1000  fruit=mango
    Should Be True  ${is_contains_fruit_mango}==True

