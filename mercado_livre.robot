*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Abrir Browser com a Home Page
    Open Browser   https://www.mercadolivre.com.br    chrome 

clicar no link Ofertas da home page
    Click Element    xpath=//a[text()='Ofertas'] 
    #Tambem posso usar Click Link    ofertas
Escrever o nome de um produto na barra de Pesquisar 
    Input Text    //input[contains(@type,'text')]    action figures
    #Utilizar como auxilio a extensão truepath  

Clicar em pesquisar
    Click Element    //button[contains(@class,'nav-search-btn')]   

Verificar se a pagina realizou a busca 
    Page Should Contain    Dungeons & Dragons Golden Archive Forge
*** Test Cases ***
Acessar Home do Mercado Livre
    Abrir Browser com a Home Page
    
Acessar Ofertas do Mercado Livre 
    Abrir Browser com a Home Page   
    clicar no link Ofertas da home page

Pesquisar Produto
    Abrir Browser com a Home Page
    Escrever o nome de um produto na barra de Pesquisar
    Clicar em pesquisar
    Verificar se a pagina realizou a busca    
