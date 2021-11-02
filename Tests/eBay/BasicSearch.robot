*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/eBay_UserDefined_Keywords.robot
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/SearchResultsPage.robot

Test Setup  CommonFunctionality.Start TestCase
Test Teardown  CommonFunctionality.Finish TestCase

*** Variables ***


*** Test Cases ***
Verify basic search functionality for eBay
    [documentation]  This test case verifies the basic search
    [tags]  Functional

    HeaderPage.Input Search Text and Click Search
    SearchResultsPage.Verify Search Results

Verify advanced search functionality
    [documentation]  This test case verifies the advamced search
    [tags]  Functional
    HeaderPage.Click on Advanced Search Link








