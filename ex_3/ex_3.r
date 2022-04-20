# 1
## a)
especies = split(iris, 'Species')
#comprimento = iris$Sepal.Length

## b)
#especies.Sepal.Length
#tapply(especies,'Species', summary('Sepal.Length'))
nomes_colunas = names(iris)
vetor_especies = unique(iris$Species)
for (i in vetor_especies) {
	subset_especie = subset(iris, Species == i)
	print(paste('Resumo - comprimento - ', i,':'))
	print(summary(subset_especie$Sepal.Length))
	print(paste('Resumo - largura - ', i,':'))
	print(summary(subset_especie$Sepal.Width))
}
