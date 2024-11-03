            #language: pt

            Funcionalidade: Login na plataforma EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de Autenticação do portal EBAC

            Cenário: Autenticação válida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir mensagem de boas vindas "Olá João"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "xyz@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir mensagem de alerta "Usuário inexistente"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "xyz@123"
            Então deve exibir mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario            | senha       | mensagem                     |
            | "joao@ebac.com.br" | "senha@123" | "Olá João!"                  |
            | "xyz@ebac.com.br"  | "senha@123" | "Usuário inexistente!"       |
            | "joao@ebac.com.br" | "senha@123" | "Usuário ou senha inválidos" |