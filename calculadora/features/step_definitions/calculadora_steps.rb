class Calculadora
    def calcula(num1, operacao, num2)
        if num1 == nil || num2 == nil || operacao == nil then
           return "ERRO" 
        end

        if num1 % 1 != 0 || num2 % 1 != 0 then
            return "ERRO"
        end

        if num1 < 0 || num2 < 0 then
            return "ERRO"
        end

        case operacao
        when "+"
            return num1 + num2
        when "-"
            return (num1 - num2).abs
        when "*"
            return num1 * num2
        when "/"
            if num2 == 0 then
                return "ERRO"
            end

            return num1.to_f / num2.to_f
        end
    end
end

Dado("que eu informei o primeiro {int}") do |num1|
    @num1 = num1
end
  
Dado("informei a operacao {string}") do |operacao|
    @operacao = operacao
end
  
Dado("informei o segundo {int}") do |num2|
    @num2 = num2
end

Quando("eu pressionar o botão de resultado") do
    @resultado = Calculadora.new.calcula(@num1, @operacao, @num2)
end
  
Então("será mostrado o {int}") do |resultado_esperado|
    expect(@resultado).to eq resultado_esperado
end
  
Dado("informei a operação de divisão") do
    @operacao = "/"
end
  
Então("será mostrado uma mensagem “ERRO”") do
    expect(@resultado).to eq "ERRO"
end
  
Dado("que eu não informei o primeiro número") do
    @num1 = nil
end
    
Dado("não informei a operação") do
    @operacao = nil
end
    
Dado("não informei o segundo número") do
    @num2 = nil
end
    
Dado("informei a operação subtração") do
    @operacao = "-"
end
  
Então("o resultado será mostrado em módulo") do
    expect(@resultado).to be > 0
end
  
Dado("informei a operação divisão") do
    @operacao = "/"
end

Dado("que eu não informei nada") do
    @num1 = nil
    @num2 = nil
    @operacao = nil
end
  
Dado("informei a operação multiplicação") do
    @operacao = "*"
end
  
Dado("que eu informei o primeiro número {int}") do |num1|
    @num1 = num1
end
  
Dado("informei o segundo número {int}") do |num2|
    @num2 = num2
end
  
Dado("que eu informei o primeiro número {float}") do |num1|
    @num1 = num1
end
  
Dado("informei a operação adição") do
    @operacao = "+"
end
  
Dado("informei o segundo número {float}") do |num2|
    @num2 = num2
end
  
Então("o resultado será mostrado {float}") do |resultado_esperado|
    expect(@resultado).to eq resultado_esperado
end