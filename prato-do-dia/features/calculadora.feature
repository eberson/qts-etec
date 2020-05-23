#language:pt

Funcionalidade: Calculadora
    Queremos validar a calculadora do S.O. Baby Linux

    Esquema do Cenário: Validando Operações
        Dado que eu informei o primeiro <numero1>
        E que eu informar o segundo <numero2>
        Quando eu tentar a operação "<operacao>"
        Então eu devo ver o <resultado>

            Exemplos:
                | numero1 | numero2 | operacao | resultado |
                | 1       | 2       | +        | 3         | 
                | 2       | 3       | *        | 6         |
                | 1       | 2       | -        | -1        |