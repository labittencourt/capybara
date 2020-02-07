#language: pt
@login
Funcionalidade: Login
    Sendo um usuário do sistema Invoices
    Posso acessar minha conta
    Para poder cadastrar meus clientes e também lançar faturas

    Cenário: Admin faz login

        Dado que eu tenho uma conta com os seguintes atributos:
      | email | admin-qa@ninvoices.com |
      | senha | secret                |
        Quando faço longin
        Então vejo o dashboard com a mensagem "Olá, Admin QA"