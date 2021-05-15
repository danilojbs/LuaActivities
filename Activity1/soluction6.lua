--Elabore   um   programa   que   recebe   do   usuário   três   cadeias   de   caracteres
-- e   informa VERDADEIRO se há pelo menos duas diferentes cadeias iguais aos valores
-- 'azul', 'preto' ou 'vermelho' ou FALSO em caso contrário. 
--Exemplos: {'azul', 'preto', 'branco'} é VERDADEIRO;
--          {'azul', 'roxo', 'azul'} é FALSO; 
--          {'preto', vermelho', 'vermelho'} é VERDADEIRO.

cor1 = io.read()
cor2 = io.read()
cor3 = io.read()

azul = "azul"
preto = "preto"
vermelho = "vermelho"

--Verifica se dois "azul" e um "preto" ou "vermelho"
if azul == cor1 and azul == cor2 and cor3 == preto or cor3 == vermelho then
    print('VERDADEIRO')
elseif azul == cor1 and azul == cor3 and cor2 == preto or cor2 == vermelho then
    print('VERDADEIRO')
elseif azul == cor2 and azul == cor3 and cor1 == preto or cor1 == vermelho then
    print('VERDADEIRO')
--Verifica se dois "preto" e um "azul" ou "vermelho"
elseif preto == cor1 and preto== cor2 and cor3 == azul or cor3 == vermelho then
    print('VERDADEIRO')
elseif preto == cor1 and preto == cor3 and cor2 == azul or cor2 == vermelho then
    print('VERDADEIRO')
elseif preto == cor2 and preto == cor3 and cor1 == azul or cor1 == vermelho then
    print('VERDADEIRO')
--Verifica se tem dois "vermelho" e um "azul" ou "preto"
elseif vermelho == cor1 and vermelho== cor2 and cor3 == azul or cor3 == preto then
    print('VERDADEIRO')
elseif vermelho == cor1 and vermelho == cor3 and cor2 == azul or cor2 == preto then
    print('VERDADEIRO')
elseif vermelho == cor2 and vermelho == cor3 and cor1 == azul or cor1 == preto then
    print('VERDADEIRO')
--Se não tiver irá escrever "FALSO"
else
    print('FALSO')
end