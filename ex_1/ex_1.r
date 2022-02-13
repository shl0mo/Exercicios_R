# 1
a <- 2
b <- 3
c <- 5
## a)
x = (60/a*(-7 - 3*b + c)**a) + (3*c + b/(-a) - 1)
print(x)
## b)
y = (sqrt(125/b) + (a + b)**2 - 2*a)/(b**a + sqrt(c - b + a))
print(y)
## c)
R = !(x >= y) & (x/y != 0) | (y <= x) & (y <= sqrt(x))
print(R)

# 2
vetor_X <- c(1, 5, 9, 13, 2, 6, 10, 14, 3, 7, 11, 15, 4, 8, 12, 16)
X <- matrix(data = vetor_X, nrow = 4, ncol = 4)
vetor_Y <- c(1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 3, 0, 0, 0, 0, 4)
Y <- matrix(data = vetor_Y, nrow = 4, ncol =  4)
v <- c(4, 3, 2, 1)
## a)
print(X*solve(Y) - (t(X) - Y)*solve(Y*v + det(Y)))
## b)
for (i in X) {
    for (j in i) {
        if (j %% 2 == 0) {
            print(j)
        }
    }
}
divisiveis_2 = X %% 2 == 0
posicoes <- which(divisiveis_2, arr.ind=TRUE)
print(posicoes)

# 3
vetor_Respostas <- c('a', 'b', 'a', 'b', 'a', 'b', 'a', 'c', 'c', 'd', 'd', 'd', 'c', 'c', 'a')
Respostas <- matrix(data = vetor_Respostas, nrow = 3, ncol = 5)
gabarito <- c('a', 'b', 'c', 'd', 'a')
Resultado <- numeric(0)
total <- 0
j <- 1
for (i in 1:3) {
    if (Respostas[i] == gabarito[1]) {
        total <- total + 1
    } else {
        total <- total - 1
    }
    if (Respostas[i + 3] == gabarito[2]) {
        total <- total + 1
    } else {
        total <- total - 1
    }
    if (Respostas[i + 6] == gabarito[3]) {
        total <- total + 1
    } else {
        total <- total - 1
    }
    if (Respostas[i + 9] == gabarito[4]) {
        total <- total + 1
    } else {
        total <- total - 1
    }
    if (Respostas[i + 12] == gabarito[5]) {
        total <- total + 1
    } else {
        total <- total - 1
    }
	Resultado <- c(Resultado, total)
	total <- 0
}
print(Resultado)
