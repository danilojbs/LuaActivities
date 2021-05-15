--Crie um programa que lê três inteiros e informa VERDADEIRO se apenas o maior deles é par
--ou se o menor deles é ímpar ou informa FALSO em caso contrário.

n1, n2, n3 = io.read('*n', '*n', '*n')
maior = 0
menor = n1

if n1 > maior then
    maior = n1
end

if n2 > maior then 
    maior = n2
end

if n3 > maior then
    maior = n3
end

if n2 < menor then
    menor = n2
end

if n3 < menor then
    menor = n3
end

print(maior, menor)

if maior%2 == 0 then 
    print('VERDADEIRO')
elseif menor%2 == 1 then
    print('VERDADEIRO')
else 
    print('FALSO')
end
