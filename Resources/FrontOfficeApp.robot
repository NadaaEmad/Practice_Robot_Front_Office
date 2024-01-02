*** Settings ***
Resource    ../Resources/CommonWeb.robot
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/TeamPage.robot
Resource    ../Resources/PO/TopNav.robot


*** Keywords ***
Go to "Landing" page
    LandingPage.Navigate to
    LandingPage.Verify Page Loaded

Go to "Team" page
    TopNav.Click on team link

Validate "Team" page
     TeamPage.Verify "Team" page header
     TeamPage.Validate "Team" header content