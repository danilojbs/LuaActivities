-- Pelas regras da UFMA, toda disciplina é composta de 3 avaliações obrigatórias.
-- Se um aluno tem média superior ou igual a 7 (sete) nas três avaliações, ele é considerado 
-- “Aprovado por média.”. Se tiver média inferior a 7 (sete), tem direito a uma quarta prova,
-- chamada de reposição, que substituiu a menor nota das três provas anteriores 
-- (se a nota da reposição for maior que ela). Após a reposição, se as três maiores notas 
-- formarem uma média igual ou superior a 7 (sete), o aluno é considerado “Aprovado na reposição.”.
-- Finalmente, apenas se tiver a média com a reposição inferior a 7 (sete), ele faz uma quinta
-- prova, chamada de final, em que é considerado “Aprovado na final.” se a soma da média com a 
-- reposição e a nota da prova final for igual ou maior que 12 (doze). 
-- Nesse último caso, caso a soma da média com reposição e prova final for inferior a 12 (doze),
-- o aluno é dito como “Reprovado.”.
-- Faça um programa que lê as três notas obrigatórias de uma
-- disciplina e depois, apenas se necessário, lê as notas da reposição e final.
-- O programa deve dar como saída as frases “Aprovado por média.”, “Aprovado na reposição”.
-- “Aprovado na final.” ou “Reprovado.” respectivamente em cada uma dessas situações conforme a
-- descrição anterior.

print("Informe as notas das 3 primeiras provas respectivamente:")
n1, n2, n3 = io.read('*n', '*n', '*n')

media = (n1 + n2 + n3) / 3

if media >= 7 then
    print("")
    print("Aprovado por média")
else
    print("")
    print("Informe a sua nota na reposição:") 
    reposicao = io.read('*n')
    if reposicao > n1 then
       n1 = reposicao
       media = (n1 + n2 + n3) / 3
        if media >= 7 then
            print("")
            print("Aprovado na reposição")
        end
    elseif reposicao > n2 then
        n2 = reposicao
        media = (n1 + n2 + n3) / 3
        if media >= 7 then
            print("")
            print("Aprovado na reposição")
        end
    elseif reposicao > n3 then
        n3 = reposicao
        media = (n1 + n2 + n3) / 3
        if media >= 7 then
            print("")
            print("Aprovado na reposição")
        end
    else
        print("")
        print("Precisa fazer a prova final")
        print("Informe a sua nota na prova final:")
        final = io.read('*n')
        if media + final >= 12 then
            print("")
            print("Aprovado na final")
        else
            print("")
            print("Reprovado")
        end
    end
end

print("")
print("Média: "..media)
print("")