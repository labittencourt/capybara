#language: pt

Funcionalidade: Cadastro de endereço de entrega
        Sendo um cliente da Loja Virtual que adicionou produtos no carrinho
        Posso cadastrar um novo endereço de entrega
        Para que estes produtos possam ser entregues no novo endereço

    Cenário: Editar meu cadastro de endereço
        Dado que eu tenha acessado o site da Loja Virtual
            E efetuado o login
            |email|teste@teste.com|
            |senha|123456|
        Então estarei visualizando a tela principal do site da Loja Virtual
        Quando eu clicar no menu Cadastro
            E clicar em editar os meus dados cadastrais
            E clicar no campo novo endereço de entrega
            E preencher os campos obrigatórios:
            |Logradouro|Rua da Secretária|
            |Número|123|
            |Completmento|casa|
            |Bairro|Centro|
            |Cidade|Uberlândia|
            |Estado|MG|
            |CEP|38400-222|
        Quando clicar no botão Salvar
        Então o sistema deverá validar se os dados adicionados são diferentes do endereço existente
            E após confirmação mostrar mensagem de sucesso: "Seu endereço de entrega foi alterado com sucesso!"



        