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
        if (i == j) {
            ocorrencias = ocorrencias + 1
        }
    }
    print(paste(c('Candidato: ',i,', votos: ', ocorrencias, ', porcentagam: ', ocorrencias/length(vetor)*100, '%'), collapse=''))
}
