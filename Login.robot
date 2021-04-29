*** Settings ***

Library      SeleniumLibrary

Default Tags    Smoke Test

*** Test Cases ***

Login Test
    
       Openurl
       Login  
       
Logout Test
       
       Logout

*** Variables ***

${URL}            https://livetest.greythr.com/uas/portal/auth/login
${Username}       majordomo               
${Password}       majordomo@123
${URL1}           https://livetest.greythr.com/ngapp/employee/setup/letter-template
${AddLetter}      //button[normalize-space()='New Letter Template']


# ${Action}        //a[@class='home-page'][contains(.,'Actions')] 
# ${Employeetab}   //div[@class='ng-binding'][contains(.,'Employee')]
# ${Add}           //a[contains(.,'Add Employee')]
# ${EmpNoD}         (//span[contains(.,'---Select---')])[1]
# ${EmpNo}         //div[@class='select2-result-label'][contains(.,'Permanent Employees')]
# ${EmpPer}        //div[@class='select2-result-label']
# ${Emper}        (//div[@class='select2-result-label'])[3]

*** Keywords ***

Openurl
    
         Open Browser               ${URL}                                               Chrome 

Login
       Maximize Browser Window 
       Sleep                           2   
       Input Text                      id=username    	                                   ${Username}   
       Input Text                      id=password                                          ${password}
       Click Element                   //button[contains(.,'Log in')]
       
       # Wait Until Element Is Visible    ${Action}    
       # Click Element    ${Action}    
       # Wait Until Element Is Visible    ${Add}  
       # Click Element    ${Add}   
       # Wait Until Element Is Visible    ${EmpNoD}    
       # Click Element                    ${EmpNoD} 
       # Click Element                    ${EmpNo}  
       # Select From List By Value        ${EmpNoD}       3
        
       
       
Scroll Page To Location    
    [Arguments]    ${x_location}    ${y_location}
    Execute JavaScript    window.scrollTo(${x_location},${y_location})
    
Logout
    
       Click Element              xpath=//i[@class='icon-logout']  
    

      