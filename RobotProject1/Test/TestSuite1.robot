*** Settings ***
Library    Selenium2Library  

# Suite Setup       Test Suite Setup
# Suite Teardown    Test Suite Teardown
Test Setup        Log    In test setup
Test Teardown     Log    In test teardown

Default Tags      Smoke

*** Test Cases ***
MyFirstTest
    [Tags]             Regression   
    [Documentation]    This is my first test 
    Log                Inside first test
    
MySecondTest 
    [Tags]             Sprint1   
    [Documentation]    This is my second test 
    Log                Inside second test
    Set Tags           Sprint 1 feature test
    Remove Tags        Sprint 1 feature test  
    
MyThirdTest
    [Tags]             Sprint1   
    [Documentation]    This is my third test 
    Log                Insede third test
    
MyFourthTest
    [Tags]             Sprint1   
    [Documentation]    This is my fourth test 
    Log                Insede fourth test
    
# SampleLoginTest
    # [Documentation]              This is a sample login test
    # LoginKW
    # Click Element                class=oxd-userdropdown-img
    # Click Element                class=oxd-userdropdown-link  
   
# *** Variables ***
# ${URL}           https://opensource-demo.orangehrmlive.com/web/index.php/auth/login  
# @{CREDENTIALS}    Admin             admin123    
# &{LOGINDATA}      username=Admin    password=admin123  

# *** Keywords ***
# LoginKW
    # Input Text                   name=username                 ${CREDENTIALS}[0]
    # Input Password               name=password                 ${LOGINDATA}[password]
    # Click Button                 class=oxd-button

# Test Suite Setup
    # Log    In test suite setup
    # Open Browser                 ${URL}    chrome
    # Set Browser Implicit Wait    5     
    
# Test Suite Teardown
    # Log    In test suite teardown
    # Close Browser
    # Log    Test done  
    # Log    This test is run by %{username} on %{OS}      