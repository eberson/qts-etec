Dado('que eu acesso o site da google.com') do
    visit 'http://google.com.br'
end
  
Quando('eu informar {string} no campo de pesquisa') do |query|
    find('input.gsfi').set(query)
end
  
Quando('quando eu clico no botão Pesquisar') do
    find('input.gNO89b').click
end
  
Então('eu quero ver links sobre o assunto pesquisado') do
    expect(page).to have_content "BDD como metodologia ágil - dti - DTI Digital"
end 