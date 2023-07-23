*** Settings ***
Library   SeleniumLibrary
Resource    C:/Users/knwrp/OneDrive/Desktop/PYRobotFramework-lifestyle/keywords/keywords.robot


*** Test Cases ***
testcases
    open myntra
    myntra HomePage
    myntra productpage
    # myntra wishlistpage
    myntra productdetailspage
    myntra addtocartpage