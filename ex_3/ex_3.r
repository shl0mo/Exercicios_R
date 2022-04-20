# 1
## a)
especies = split(iris, 'Species')
#comprimento = iris$Sepal.Length

## b)
nomes_colunas = names(iris)
vetor_especies = unique(iris$Species)
for (i in vetor_especies) {
	subset_especie = subset(iris, Species == i)
	print(paste('Resumo - comprimento - ', i,':'))
	print(summary(subset_especie$Sepal.Length))
	print(paste('Resumo - largura - ', i,':'))
	print(summary(subset_especie$Sepal.Width))
}

## c)
iris[order(iris$Species, iris$Sepal.Length, decreasing = TRUE), ]

## d)
nomes_colunas = names(iris)
vetor_especies = unique(iris$Species)
especie_maior_comprimento = ''
comprimento = 0
for (i in vetor_especies) {
	subset_especie = subset(iris, Species == i)
	maior_comprimento = max(subset_especie$Sepal.Length)
	print(paste('Maior comprimento para ', i, ':', maior_comprimento))
	if (maior_comprimento > comprimento) {
		comprimento = maior_comprimento
		especie_maior_comprimento = i
	}
}
print(paste('Espécie com maior comprimento', especie_maior_comprimento))
