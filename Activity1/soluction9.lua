--Faça um programa que requisita do usuário 5 (cinco) números inteiros e 
-- informa se pelo menos dois pares diferentes desses  números são iguais.
--Exemplo: {3,4,4,5,3} e {1,2,2,1,2} tem 2 pares de números iguais
-- mas {2,2,2,3,2} não tem 2 pares diferentes de números iguais.

n1, n2, n3, n4, n5 = io.read('*n', '*n', '*n', '*n', '*n')
verifica1 = 0
v2 = ''

if     (n1 == n2) and (n3 == n4) or (n1 == n2) and (n3 == n5) or (n1 == n2) and (n4 == n5) then
    verifica1 = 1
    v2 = 'n1n2'
elseif (n1 == n3) and (n2 == n4) or (n1 == n3) and (n2 == n5) or (n1 == n3) and (n4 == n5) then
    verifica1 = 1
    v2 = 'n1n3'
elseif (n1 == n4) and (n2 == n3) or (n1 == n4) and (n2 == n5) or (n1 == n4) and (n3 == n5) then
    verifica1 = 1
    v2 = 'n1n4'
elseif (n1 == n5) and (n2 == n3) or (n1 == n5) and (n2 == n4) or (n1 == n5) and (n3 == n4) then
    verifica1 = 1
    v2 = 'n1n5'

elseif (n2 == n3) and (n1 == n4) or (n2 == n3) and (n1 == n5) or (n2 == n3) and (n4 == n5) then
    verifica1 = 1
    v2 = 'n2n3'
elseif (n2 == n4) and (n1 == n3) or (n2 == n4) and (n1 == n5) or (n2 == n4) and (n3 == n5) then
    verifica1 = 1
    v2 = 'n2n4'
elseif (n2 == n5) and (n1 == n3) or (n2 == n5) and (n1 == n4) or (n2 == n5) and (n3 == n4) then
    verifica1 = 1
    v2 = 'n2n5'

elseif (n3 == n4) and (n1 == n2) or (n3 == n4) and (n1 == n5) or (n3 == n4) and (n2 == n5) then
    verifica1 = 1
    v2 = 'n3n4'
elseif (n3 == n5) and (n1 == n2) or (n3 == n5) and (n1 == n4) or (n3 == n5) and (n2 == n4) then
    verifica1 = 1
    v2 = 'n3n5'

elseif (n4 == n5) and (n1 == n2) or (n4 == n5) and (n1 == n3) or (n4 == n5) and (n2 == n3) then
    verifica1 = 1
    v2 = 'n4n5'
end

if verifica1 == 1 then
    if v2 == 'n1n2' then
        if n1 ~= n3 and n1 ~= n4 and n1 ~= n5 then
            verifica1 = 2
        end
    elseif v2 == 'n1n3' then
        if n1 ~= n2 and n1 ~= n4 and n1 ~= n5 then
            verifica1 = 2
        end
    elseif v2 == 'n1n4' then
        if n1 ~= n2 and n1 ~= n3 and n1 ~= n5 then
            verifica1 = 2
        end
    elseif v2 == 'n1n5' then
        if n1 ~= n2 and n1 ~= n3 and n1 ~= n4 then
            verifica1 = 2
        end
    elseif v2 == 'n2n3' then
        if n2 ~= n1 and n2 ~= n4 and n2 ~= n5 then
            verifica1 = 2
        end
    elseif v2 == 'n2n4' then
        if n2 ~= n1 and n2 ~= n3 and n2 ~= n5 then
            verifica1 = 2
        end
    elseif v2 == 'n2n5' then
        if n2 ~= n1 and n2 ~= n3 and n2 ~= n4 then
            verifica1 = 2
        end
    elseif v2 == 'n3n4' then
        if n3 ~= n1 and n3 ~= n2 and n3 ~= n5 then
            verifica1 = 2
        end
    elseif v2 == 'n3n5' then
        if n3 ~= n1 and n3 ~= n2 and n3 ~= n4 then
            verifica1 = 2
        end
    elseif v2 == 'n4n5' then
        if n4 ~= n1 and n4 ~= n2 and n4 ~= n3 then
            verifica1 = 2
        end
    end
end

if verifica1 == 2 then
    print('Há pelomenos 2 pares de números iguais')
    print('Números: {'..n1..','..n2..','..n3..','..n4..','..n5..'}')
else
    print('Não tem ao menos 2 pares de números iguais')
    print('Números: {'..n1..','..n2..','..n3..','..n4..','..n5..'}')
end