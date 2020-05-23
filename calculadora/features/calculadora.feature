#language: pt

Funcionalidade: Calculadora

    Esquema do Cenário: Validando operações
        Dado que eu informei o primeiro <numero1>
        E informei a operacao "<operacao>"
        E informei o segundo <numero2>
        Quando eu pressionar o botão de resultado
        Então será mostrado o <resultado>
            Exemplos:
            | numero1 | operacao | numero2 | resultado |
            | 5       | +        | 6       | 11        |
            | 10      | -        | 3       | 7         |
            | 2       | *        | 7       | 14        |
            | 8       | /        | 4       | 2         |

    Cenário: Divisão por zero
        Dado que eu informei o primeiro 2
        E informei a operação de divisão
        E informei o segundo 0
        Quando eu pressionar o botão de resultado
        Então será mostrado uma mensagem “ERRO”

    Cenário: Cálculo sem informar operando e operador
        Dado que eu não informei nada
        Quando eu pressionar o botão de resultado
        Então será mostrado uma mensagem “ERRO”
        
        Dado que eu informei o primeiro 2
        E não informei a operação
        E não informei o segundo número
        Quando eu pressionar o botão de resultado
        Então será mostrado uma mensagem “ERRO”
 
        Dado que eu informei o primeiro 3
        E informei a operação multiplicação
        E não informei o segundo número
        Quando eu pressionar o botão de resultado
        Então será mostrado uma mensagem “ERRO”

    Cenário: Cálculo com números negativos
        Dado que eu informei o primeiro número -2
        E informei a operação subtração
        E informei o segundo número 2
        Quando eu pressionar o botão de resultado
        Então será mostrado uma mensagem “ERRO”

        Dado que eu informei o primeiro número -2
        E informei a operação adição
        E informei o segundo número 2
        Quando eu pressionar o botão de resultado
        Então será mostrado uma mensagem “ERRO”
        
        Dado que eu informei o primeiro número 2
        E informei a operação subtração
        E informei o segundo número -3
        Quando eu pressionar o botão de resultado
        Então será mostrado uma mensagem “ERRO”
        
        Dado que eu informei o primeiro número 2
        E informei a operação subtração
        E informei o segundo número 3
        Quando eu pressionar o botão de resultado
        Então o resultado será mostrado em módulo

    Cenário: Cálculo com decimais
        Dado que eu informei o primeiro número 1.5
        E informei a operação adição
        E informei o segundo número 3
        Quando eu pressionar o botão de resultado
        Então será mostrado uma mensagem “ERRO”
        
        Dado que eu informei o primeiro número 2
        E informei a operação multiplicação
        E informei o segundo número 3.14
        Quando eu pressionar o botão de resultado
        Então será mostrado uma mensagem “ERRO”
 
        Dado que eu informei o primeiro número 3
        E informei a operação divisão
        E informei o segundo número 2
        Quando eu pressionar o botão de resultado
        Então o resultado será mostrado 1.5