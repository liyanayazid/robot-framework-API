*** Settings ***
Documentation    Suite description
Resource    common.robot


*** Variable ***
${login_btn}    dt_login_button
${email_field}    name=email
${pw_field}    //*[@type="password"]
${login_oauth_btn}    //*[text()="Log in"]
${settings}    //*[@id="dt_core_header_acc-info-container"]/div[2]/div
${api_token}    //*[@id="dc_api-token_link"]
${api_page}    //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div
${read}    //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[1]/div[2]/div/div/div/div[1]
${token_name}    //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[2]/div[2]/div/div/div/div/input
${create_btn}    //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[2]/div[2]/div/div/div/button
${delete_btn}    //*[@class="dc-btn dc-btn--secondary dc-btn__small"]
${yes_btn}    //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[3]/div[2]/div/div/table/tbody/tr/td[5]/div/button[2]

${deactivate}    //*[@id="dc_deactivate-account_link"]
${deactivate_btn}    //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/button
${checkbox1}    //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/label[1]/span[1]
${text1}    //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/div[1]/textarea
${cont_btn}    //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/div[3]/div[2]/button[2]
${deact_btn_final}    //*[@id="modal_root"]/div/div/div/div[2]/button[2]

*** Test Cases ***
Open Deriv
    Login    ${my_email}    ${my_pw}


