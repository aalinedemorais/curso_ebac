            #language: pt

            Funcionalidade: Concluir compra na plataforma EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de Cadastro da plataforma EBAC-SHOP

            Cenário: Dados válidos no cadastro
            Quando adicionar dados em todos campos contendo "*"
            Então a conta deve ser criada
            E emitir a mensagem "Sua conta foi criada com sucesso"

            Cenário: E-mail inválido no cadastro
            Quando adicionar um e-mail em formato diferente de parte local "@" ponto e nome do domínio
            Então a conta deve não ser criada
            E emitir a mensagem "Insira um endereço de e-mail válido"

            Cenário: Dados incompletos no cadastro
            Quando não adicionar dados em todos campos contendo "*"
            Então a conta deve não ser criada
            E emitir a mensagem "Insira informações em todos os campos contendo *"

            Esquema do Cenário: Autenticar cadastro de usuário
            Quando eu digitar <nome>
            E <sobrenome>
            E <endereco>
            E <cidade>
            E <cep>
            E <telefone>
            E <email>
            Então exibir <mensagem>

            | nome   | sobrenome | endereco | cidade          | cep         | telefone         | email                 | mensagem                                           |
            | "joao" | "silva"   | "rua 0"  | "florianópolis" | "123456-78" | "(91)23456-7890" | "joao.silva@ebac.com" | "Sua conta foi criada com sucesso"                 |
            | "joao" | "silva"   | "rua 0"  | "florianópolis" | "123456-78" | "(91)23456-7890" | "0"                   | "Insira um endereço de e-mail válido"              |
            | "joao" | "0"       | "rua 0"  | "florianópolis" | "123456-78" | "(91)23456-7890" | "joao.silva@ebac.com" | "Insira informações em todos os campos contendo *" |