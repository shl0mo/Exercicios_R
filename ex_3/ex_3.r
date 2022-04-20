# 1
## a)
especies = split(iris, 'Species')
#comprimento = iris$Sepal.Length

## b)
dataframe_b = data.frame()

nomes_colunas = names(iris)
vetor_especies = unique(iris$Species)
for (i in vetor_especies) {
	subset_especie = subset(iris, Species == i)
	string = c('Resumo - comprimento - ', i,':', '\n')
	dataframe_b = rbind(string)
	cat(string)
	comprimentos = summary(subset_especie$Sepal.Length)
	dataframe_b = rbind(comprimentos)
	print(comprimentos)
	string = c('Resumo - largura - ', i,':', '\n')
	dataframe_b = rbind(string)
	cat(string)
	larguras = summary(subset_especie$Sepal.Width)
	dataframe_b = rbind(larguras)
	print(larguras)
}

## c)
iris_ordem = iris[order(iris$Species, iris$Sepal.Length, decreasing = TRUE), ]

## d)
dataframe_d = data.frame()

nomes_colunas = names(iris)
vetor_especies = unique(iris$Species)
especie_maior_comprimento = ''
comprimento = 0
for (i in vetor_especies) {
	subset_especie = subset(iris, Species == i)
	maior_comprimento = max(subset_especie$Sepal.Length)
	string = c('Maior comprimento para ', i, ':', maior_comprimento, '\n')
	dataframe_d = rbind(dataframe_d, string)
	cat(string)
	if (maior_comprimento > comprimento) {
		comprimento = maior_comprimento
		especie_maior_comprimento = i
	}
}
string = c('Espécie com maior comprimento', especie_maior_comprimento, '\n')
cat(string)

## e)
resposta_a = write.table(especies, file='respostas.txt', append=TRUE, row.names=FALSE, col.names=FALSE)
resposta_c = write.table(dataframe_b, file='respostas.txt', append=TRUE, row.names=FALSE, col.names=FALSE)
resposta_c = write.table(iris_ordem, file='respostas.txt', append=TRUE, row.names=FALSE, col.names=FALSE)
resposta_d = write.table(dataframe_d, file='respostas.txt', append=TRUE, row.names=FALSE, col.names=FALSE)

#resposta_d = write.table(dataframe_d, file='respostas.txt')

print(dataframe_d)

# 2
## 
