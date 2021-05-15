--Em uma competição de saltos ornamentais, 6 (seis) juízes informam notas reais
-- variando de 0 a 10. A nota final do atleta deve excluir a maior e a menor nota dos juízes 
-- e é composta pela soma das quatro demais notas.
--Faça um programa que lê do usuário as seis notas dos juízes e informa a 
-- nota final do atleta (a soma das notas excluindo a menor e a maior delas).

print("Informe as notas dadas pelos juízes respectivamente:")
n1, n2, n3, n4, n5, n6 = io.read('*n', '*n', '*n', '*n', '*n', '*n')
maior = 0
menor = n1

--Verifica a maior nota
if n1 > maior then
    maior = n1
end
if n2 > maior then
    maior = n2
end
if n3 > maior then
    maior = n3
end
if n4 > maior then
    maior = n4
end
if n5 > maior then
    maior = n5
end
if n6 > maior then
    maior = n6
end

--Verifica a menor nota
if n2 < menor then
    menor = n2
end
if n3 < menor then
    menor = n3
end
if n4 < menor then
    menor = n4
end
if n5 < menor then
    menor = n5
end
if n6 < menor then
    menor = n6
end

n = n1 + n2 + n3 + n4 + n5 + n6
nf = n - menor - maior

if n1 > 10 or n2 > 10 or n3 > 10 or n4 > 10 or n5 > 10 or n6 > 10 then
    print('nota invalida')
elseif n1 < 0 or n2 < 0 or n3 < 0 or n4 < 0 or n5 < 0 or n6 < 0 then
    print('nota invalida')
else
    print('A nota final do atleta foi: '..nf)
end