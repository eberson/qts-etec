Dado('que eu acessei a página do Google') do
    visit 'http://google.com.br'
end
  
Quando('eu pesquisar por {string}') do |pesquisa|
    find('input.gsfi').set(pesquisa)
end
  
Quando('clicar no botão Pesquisa Google') do
    find('input.gNO89b').click
end
  
Então('eu quero vejo um artigo com o título {string}') do |artigo|
    expect(page).to have_content artigo
end