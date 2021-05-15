--Um aluno de computação está organizando um bolão de futebol.
-- Segundo suas regras, os apostadores informam o placar do jogo e ganham 10 pontos se acertarem
-- o vencedor ou se foi empate e ganham mais 5 pontos para o placar de cada time que acertarem.
-- Exemplo: se o placar do jogo foi 3x2, são 0 pontos se o placar apostado foi 0x1; 5 pontos para
-- os placares apostados 0x2 ou 3x5; 10 pontos para o placar apostado 1x0; ou 20 pontos para o
-- placar exato de 3x2. 
--Faça um programa que requisita do usuário o placar apostado e depois o placar do jogo
-- e informa quantos pontos o apostador fez.

print("Informe a sua aposta de quantos gols o time1 irá fazer:")
time1 = io.read('*n')
print("")
print("Agora informe quantos gols o time2 irá fazer:")
time2 = io.read('*n')
print("")

pontos = 0

math.randomseed(os.time()*100)
goltime1 = math.random (0, 5)
goltime2 = math.random (0, 5)

if goltime1 > goltime2 then
    print('O placar do jogo ficou '..goltime1.."x"..goltime2.." para o time1.")
    elseif goltime1 < goltime2 then
        print('O placar do jogo ficou '..goltime2.."x"..goltime1.." para o time2.")
        else
            print('O placar do jogo ficou '..goltime1.."x"..goltime2.." EMPATE!")
end

print("")

--Acertou o placar
if goltime1 == time1 and goltime2 == time2 then
    pontos = pontos + 20
    print('Você fez '..pontos..' pontos.')

--Empate ou Vitória
elseif goltime1 > goltime2 and time1 > time2 then
    pontos = pontos + 10
    print('Você fez '..pontos..' pontos.')
elseif goltime1 < goltime2 and time1 < time2 then
    pontos = pontos + 10
    print('Você fez '..pontos..' pontos.')
elseif goltime1 == goltime2 and time1 == time2 then
    pontos = pontos + 10
    print('Você fez '..pontos..' pontos.')

--Acertou um número do placar
elseif goltime1 == time1 or goltime2 == time2 then
    pontos = pontos + 5
    print('Você fez '..pontos..' pontos.')
else
    print('Você fez '..pontos..' pontos.')
end