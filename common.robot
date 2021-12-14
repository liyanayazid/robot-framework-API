*** Settings ***
Documentation    Suite description
Library    SeleniumLibrary

*** Keywords ***
Login
    [arguments]    ${email}    ${pw}
    Open Browser    url=https://app.deriv.com    browser=chrome
    set window size   1028    1024

#Login
    wait until page does not contain    dt_core_header_acc-info-preloader    60
    wait until page contains element    ${login_btn}    60
    Click element   ${login_btn}
    wait until page contains element    ${email_field}    15
    input text    ${email_field}    ${email}
    input text    ${pw_field}      ${pw}
    Click element    ${login_oauth_btn}
    wait until page does not contain element    dt_core_header_acc-info-preloader    60
    Click element    ${settings}
    wait until page contains element    //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[1]/div    60
    Click element    ${api_token}
    wait until page contains element    ${read}    60

#Create READ token
    Click element    ${read}
    Click element    ${token_name}
    press keys    ${token_name}    token1
    Click element    ${create_btn}

#Delete token
    Click element    ${delete_btn}
    wait until page contains element    ${yes_btn}    30
    CLick button    ${yes_btn}

#Deactivate
    wait until page does not contain element    dt_core_header_acc-info-preloader    60
    Click element    ${settings}
    wait until page contains element    //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[1]/div    60
    Click element    ${deactivate}
    wait until page contains element    ${deactivate_btn}    60
    Click element    ${deactivate_btn}
    wait until page contains element    ${checkbox1}    60
    Click element    ${checkbox1}
    Click elemeent    ${text1}
    press keys    $${text1}   i love deriv
    Click element    ${cont_btn}
    wait until page contains element    ${deact_btn_final}    60
    CLick element    ${deact_btn_final}