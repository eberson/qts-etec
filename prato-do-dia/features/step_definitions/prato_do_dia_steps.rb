class Restaurante
    def prato_do_dia(dia)
        case dia
        when "segunda feira"
            return "Virado a Paulista"
        when "terca feira"
            return "Dobradinha"
        when "quarta feira"
            return "Feijoada"
        when "quinta feira"
            return "Macarronada"
        when "sexta feira"
            return "File de Peixe"
        end
    end
end

Dado("que hoje é {string}") do |dia|
    @hoje = dia
end
  
Quando("eu pergunto qual é o prato do dia") do
    @valor_obtido = Restaurante.new.prato_do_dia(@hoje)
end
  
Então("a resposta deve ser {string}") do |valor_esperado|
    expect(@valor_obtido).to eq valor_esperado
end