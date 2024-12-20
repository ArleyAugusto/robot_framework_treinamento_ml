*** Settings ***
Documentation    Nesta suite aprenderemos a usar variáveis no Robot

*** Variables ***
${VARIAVEL_ESCALAR}    Arley Augusto
@{VARIAVEL_LISTA}    
...    Batata 
...    Tomate   
...    Banana    
&{VARIAVEL_DICIONARIO}    
...    NOME=Arley    
...    SOBRENOME=Aguiar

*** Test Cases ***
Todas as variáveis no console
    Log To Console    \n${VARIAVEL_ESCALAR}
    Log To Console    \n${VARIAVEL_LISTA}
    Log To Console    \n${VARIAVEL_DICIONARIO}

Váriavel Escalar
    Log To Console    ${VARIAVEL_ESCALAR}
    VAR    ${nome}    Arley
    VAR    ${sobrenome}    Aguiar
    VAR    ${composto}    Augusto
    Log To Console    \nChamando as duas variáveis:${nome} ${sobrenome}  
    VAR    ${nome_completo}    ${nome} ${composto} ${sobrenome}     
    Log To Console    \nConcatenando as tres variáveis:${nome_completo}