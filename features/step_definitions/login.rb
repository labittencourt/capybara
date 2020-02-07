# encoding:utf-8

Dado(/^que eu tenho uma conta com os seguintes atributos:$/) do |table|
    @user = table.rows_hash
end

Quando(/^faço longin$/) do
  visit '/login'
  find("#email").set @user["email"]
  find('input[placeholder= "Informe sua senha"]').set @user['senha']
  find("button[id*=btnLogin]").click
  
end

Então(/^vejo o dashboard com a mensagem "([^"]*)"$/) do |message|
     title = find('#page_title').text
     expect(title).to eql 'Dashboard'

    msn = find('#title_row p').text
    expect(msn).to have_content message
end