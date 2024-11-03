            #language: pt

            Funcionalidade: Configurar produto na plataforma EBAC-SHOP
            Como cliente da EBAC-SHOP
            quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a plataforma EBAC-SHOP
            E escolha uma peça

            Cenário: Dados válidos para compra
            E que seja definida a cor azul
            E o tamanho seja PP
            E a quantidade de 2 unidades
            Quando clicar em Comprar
            Então adicionar itens ao carrinho
            E emitir mensagem "Item adicionado ao carrinho"

            Cenário: Dados inválidos para compra
            E que seja definida a cor laranja
            E o tamanho M
            E a quantidade de 11 unidades
            Quando clicar em Comprar
            Então não adicionar ao carrinho
            E emitir mensagem "Quantidade excede limite"

            Cenário: Dados incompletos para compra
            E que não seja definida cor
            E o tamanho G
            E a quantidade de 10 unidades
            Quando clicar em Comprar
            Então não adicionar ao carrinho
            E emitir mensagem "Cor da peça não definida"

            Cenário: Dados incompletos para compra
            E que seja definida a cor vermelha
            E não seja definido o tamanho
            E a quantidade de 5 unidades
            Quando clicar em Comprar
            Então não adicionar ao carrinho
            E emitir mensagem "Tamanho da peça não definido"

            Cenário: Limpar e excluir do carrinho
            E que seja definida a cor vermelha
            E não seja definido o tamanho
            E a quantidade de 5 unidades
            Quando clicar em Limpar
            Então limpar as informações já definidas
            E não adicionar ao carrinho

            Esquema do Cenário: Autenticar dados para inserir peça ao carrinho
            Quando definir <cor>
            E <tamanho>
            E <quantidade>
            Então emitir <mensagem>

            Exemplo:
            | cor        | tamanho | quantidade | mensagem                       |
            | "vermelho" | "M"     | "3"        | "Item adicionado ao carrinho"  |
            | "azul"     | "P"     | "20"       | "Quantidade excede limite"     |
            | "0"        | "G"     | "1"        | "Cor da peça não definida"     |
            | "laranja"  | "0"     | "8"        | "Tamanho da peça não definido" |