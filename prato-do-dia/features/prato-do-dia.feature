#language:pt

Funcionalidade: Prato do dia
    Queremos saber qual é o prato do dia na capital do interior

    # Cenário: Hoje é dia de Virado a Paulista
    #     Dado que hoje é "segunda-feira"
    #     Quando eu pergunto qual é o prato do dia
    #     Então a resposta deve ser "Virado a Paulista"

    # Cenário: Hoje é dia de Dobradinha
    #     Dado que hoje é "terca-feira"
    #     Quando eu pergunto qual é o prato do dia
    #     Então a resposta deve ser "Dobradinha"

    Esquema do Cenário: Descubra o prato do dia
        Dado que hoje é "<dia>"
        Quando eu pergunto qual é o prato do dia
        Então a resposta deve ser "<resposta>"

            Exemplos:
                | dia           | resposta          |
                | segunda-feira | Virado a Paulista |
                | terca-feira   | Dobradinha        |
                | quarta-feira  | Feijoada          |
                | quinta-feira  | Macarrão          |
                | sexta-feira   | Filé de Peixe     | 

