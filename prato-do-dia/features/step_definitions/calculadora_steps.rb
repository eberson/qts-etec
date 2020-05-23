class Calculadora 
    def calcula(num1, num2, operacao)
        case (operacao)
        when "+"
            return num1 + num2
        when "-"
            return num1 - num2
        when "*"
            return num1 * num2
        end    
    end
end

Dado("que eu informei o primeiro {int}") do |numero1|
    @num1 = numero1
end
  
Dado("que eu informar o segundo {int}") do |numero2|
    @num2 = numero2
end
  
Quando("eu tentar a operação {string}") do |operacao|
    @operacao = operacao
end
  
Então("eu devo ver o {int}") do |resultado|
    expect(Calculadora.new.calcula(@num1, @num2, @operacao)).to eql resultado
end