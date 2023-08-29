*** Settings ***
Library    SeleniumLibrary



*** Test Cases ***
Login Guru - Bai tap 01
    Open Browser    https://demo.guru99.com/test/login.html   chrome
    Maximize Browser Window
    Input Text   //input[@id='email']   test
    Input Text    //input[@id='passwd']   a
    Click Button   //button[@id='SubmitLogin']
    Wait Until Element Is Visible    //h3[text()='Successfully Logged in...']    3s
    



*** Test Cases ***
Bai tap 02
    Open Browser    https://tiki.vn/   chrome
    Maximize Browser Window
    Input Text   //input[@data-view-id='main_search_form_input']   nồi chiên
    Click Element   //div[@class='style__StyledSuggestion-sc-1y3xjh6-0 gyELMq']/a[1]
    Wait Until Element Is Visible    //div[@data-view-id='product_list_container']/div[4]   10s
    Click Element   //div[@data-view-id='product_list_container']/div[4]
    Wait Until Element Is Visible   //button[@data-view-id='pdp_add_to_cart_button']   5s
    Click Button   //button[@data-view-id='pdp_add_to_cart_button']
    Wait Until Element Is Visible    //h4[text()='Xin chào,']    5s  

*** Test Cases ***
Bai tap 03
    Open Browser    https://www.google.com/   chrome
    Maximize Browser Window
    Input Text   //*[@id="APjFqb"]   MSB
    Wait Until Element Is Visible   (//span[contains(text(),'msb')])[1]   5s
    Click Element   (//span[contains(text(),'msb')])[1]
    Wait Until Element Is Visible   //a[@href='https://www.msb.com.vn/vi/']   10s
    Click Element   //a[@href='https://www.msb.com.vn/vi/']
    Wait Until Element Is Visible   //*[@id="fragment-34202-joci"]/div/div/div/span   5s
    Click Element   //*[@id="fragment-34202-joci"]/div/div/div/span
	