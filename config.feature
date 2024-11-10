            #language: pt

            Funcionalidade: Configurar produto na plataforma EBAC-SHOP
            Como cliente da EBAC-SHOP
            quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a plataforma EBAC-SHOP
            E escolher uma peça nas cores azul, vermelho ou laranja

            Cenário: Dados válidos para compra
            E definir tamanho entre PP ao GG e quantidade 1 a 10
            Quando clicar em Comprar
            Então adicionar itens ao carrinho e emitir mensagem "Item adicionado ao carrinho"

            Cenário: Dados inválidos para compra
            E definir tamanho entre PP ao GG e quantidade >10
            Quando clicar em Comprar
            Então não adicionar itens ao carrinho e emitir mensagem "Quantidade excede limite"

            Cenário: Dados incompletos para compra
            E não seja definido o tamanho e quantidade 1 a 10
            Quando clicar em Comprar
            Então não adicionar ao carrinho e emitir mensagem "Tamanho da peça não definido"

            Cenário: Limpar e excluir do carrinho
            E definir tamanho entre PP ao GG e quantidade 1 a 10
            Quando clicar em Limpar
            Então limpar as informações já definidas e não adicionar ao carrinho

            Esquema do Cenário: Autenticar dados para inserir peça ao carrinho
            Quando definir <cor> <tamanho> <quantidade>
            Então emitir <mensagem>

            Exemplo:
            | cor        | tamanho | quantidade | mensagem                       |
            | "vermelho" | "M"     | "3"        | "Item adicionado ao carrinho"  |
            | "azul"     | "P"     | "20"       | "Quantidade excede limite"     |
            | "0"        | "G"     | "1"        | "Cor da peça não definida"     |
            | "laranja"  | "0"     | "8"        | "Tamanho da peça não definido" |
