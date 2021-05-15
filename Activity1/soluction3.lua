--Desenvolva um programa que recebe do usuário o placar de um jogo de futebol (os gols de cada
-- time) e informa se o resultado foi um empate, a vitória do primeiro time ou do segundo time.

print('Quantos gols o time 1 fez?')
time1 = io.read('*n')
print('E o time 2?')
time2 = io.read('*n')

if time1 > time2 then
	print(time1.." X "..time2)
	print("Vitória do time 1")
	elseif time1 < time2 then
		print(time2.." X "..time1)
		print("Vitória do time 2")
	else 
		print(time1.." X "..time2)
		print("O jogo empatou")
end
