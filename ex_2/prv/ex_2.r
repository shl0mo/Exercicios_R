# 1
# a)
vetor = c(3,3,4,6,4,2,2,3,6,5,4,2,3,5,5,3,1,2,1,5,2,5,5,1,5,6,3,4,6,3)
matriz = matrix(data=vetor, nrow=6, ncol=5, byrow=T)
matriz_uniq = unique(matriz)
matrizUnicos = function(matriz) {
    vetor = numeric(0)
    for (i in matriz) {
        if (i %in% vetor == FALSE) {
            vetor = c(vetor, i)
        }
    }
    return(vetor)
}
matriz_unicos = matrizUnicos(matriz)
for (i in matriz_unicos) {
    ocorrencias = 0
    for (j in matriz) {
        if (i == j & (i != 5 & i != 6)) {
            ocorrencias = ocorrencias + 1
        }
    }
    if (i != 5 & i != 6) {
        print(paste(c('Candidato: ',i,', votos: ', ocorrencias, ', porcentagam: ', ocorrencias/length(vetor)*100, '%'), collapse=''))
    }
}

#b)
for (i in matriz_unicos) {
    ocorrencias = 0
    for (j in matriz) {
        if (i == j & (i == 5 | i == 6)) {
            ocorrencias = ocorrencias + 1
        }
    }
    if (i == 5) {
        print(paste(c('Nulos (',i,') - votos: ', ocorrencias, ', porcentagam: ', ocorrencias/length(vetor)*100, '%'), collapse=''))
    } else if (i == 6) {
        print(paste(c('Brancos (',i,') - votos: ', ocorrencias, ', porcentagam: ', ocorrencias/length(vetor)*100, '%'), collapse=''))
    }
}

# c)
matriz_unicos
porcentagem_votos
venceu = FALSE
for (i in porcentagem_votos) {
    if (i > 50) {
        venceu = TRUE
    }
}
if (venceu == TRUE) {
    vencedor = matriz_unicos[match(max(porcentagem_votos), porcentagem_votos)]
    print(paste('O Candidato', vencedor, 'venceu no primeiro turno'))
} else {
    primeiro_candidato = matriz_unicos[match(max(porcentagem_votos), porcentagem_votos)]
    matriz_unicos = matriz_unicos[-match(max(porcentagem_votos), porcentagem_votos)]
    porcentagem_votos = porcentagem_votos[-match(max(porcentagem_votos), porcentagem_votos)]
    segundo_candidato = matriz_unicos[match(max(porcentagem_votos), porcentagem_votos)]
    print(paste('Os canditados ', primeiro_candidato, segundo_candidato, 'vao para o segundo turno'))
}

