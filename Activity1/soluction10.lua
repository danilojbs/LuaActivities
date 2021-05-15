--Faça um programa que requisita do usuário 3 (três) números inteiros para 
-- apostar num bingo e depois requisita os 3 (três) inteiros que foram sorteados.
--Finalmente, o programa deve informar quantos números o usuário acertou 
-- no sorteio (0, 1, 2 ou 3 acertos).

n1, n2, n3 = io.read('*n', '*n', '*n')
math.randomseed(os.time()*1000)
sorteado1 = math.random (1, 10)
sorteado2 = math.random (1, 10)
sorteado3 = math.random (1, 10)
acertos = 0
if n1 == sorteado1 or n1 == sorteado2 or n1 == sorteado3 then
    acertos = acertos + 1
end

if n2 == sorteado1 or n2 == sorteado2 or n2 == sorteado3 then
    acertos = acertos + 1
end

if n3 == sorteado1 or n3 == sorteado2 or n3 == sorteado3 then
    acertos = acertos + 1
end
if n1 == n2 or n1 == n3 or n2 == n3 then
    print("Você não pode apostar o mesmo número mais de uma vez.")
else
    print("")
    print("Você apostou nos números: "..n1..", "..n2..", "..n3)
    print("Os números sorteados foram: "..sorteado1..", "..sorteado2..", "..sorteado3)
    print("")
    print("Você teve o total de "..acertos.." acertos.")
end