*** Settings ***
Documentation    This is a robotframework front app practice
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/CommonWeb.robot
Resource    ../Resources/FrontOfficeApp.robot
Test Setup    CommonWeb.Begin web test
Test Teardown    CommonWeb.End web test

#robot -d results tests/FrontOfficeTests.robot

*** Variables ***
${BROWSER}    chrome
${URL}    https://automationplayground.com/front-office/

*** Test Cases ***
should be able to access "Team" page
     [Documentation]    This is a test case 1
     [Tags]    test1
     FrontOfficeApp.Go to "Landing" page
     FrontOfficeApp.Go to "Team" page


"Team" page should match requirements
    [Documentation]    This is a test case 2
    [Tags]    test2
    FrontOfficeApp.Go to "Landing" page
    FrontOfficeApp.Go to "Team" page
    FrontOfficeApp.Validate "Team" page

