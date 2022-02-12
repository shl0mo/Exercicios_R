# 1
## a)
z <- x**(a**b)
## b)
z <- (x**a)**b
## c)
z <- 3*(x**3) + 2*(x**2) + 6*x + 1
## d)
z <- z + 1


# 2
## a)
A <- (18/3/2 -1) * 5 - 4 - (2 + 3 + 5)/2
## b)
B <- 26/6/2 - 127%/% 7 %% 5
## c)
C <- 7 %% 4 - 8/(3 + 1)
## d)
D <- (2 >= 5) & (1 != 0) & !(6 <= 2*3) | (10 != 10)
## e)
E <- (5 != 2) | !(7 > 4) & (4 < pi)


# 3
## a)
C <- 3*((5 + 3)/(2 * 3)) - 4 + 7
## b)
q <- sqrt((g*(P**5))/L*V)
## c)
n <- 1 - (w/u)*(e/b + e)
## d)
k <- 3*(10**(-7))/sqrt(R)
## e)
D <- 3/(2 + 5/(2 + 1/3))
## f)
L <- ((d - t)**4)*pi/32
## g)
H <- T*((w**2)/(2*g))*(L/t)*(e/b)


# 4
x <- c(1,2,3,4,5,6,7,8,7,6,5,4,3,2,1)
y <- c(1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5)
## a)
print(x*t(y) - x*y)
## b)
print(x/y + (x**2)*y - sqrt(y)*t(x)*y)
## c)
print(x %/% y)
## d)
print(x %% y)
## e)
for (i in x) {
    if (i %% 2 == 0) {
        print(i)
    }
}
for (i in y) {
    if (i %% 2 == 0) {
        print(i)
    }
}
## f)
for (i in x) {
    if (i %% 3 != 0) {
        print(i)
    }
}
for (i in y) {
    if (i %% 3 != 0) {
        print(i)
    }
}


# 5
vetor <- numeric(0)
for (i in c(1:100)) {
    if (i %% 2 == 0 & i %% 3 == 0 & i %% 7 == 0) {
    	vetor <- c(vetor, i)
    }
}
vetor


# 6
fila <- c("Steve", "Russell", "Alison", "Liam")
## a)
fila <- c(fila, "Barry")
## b)
fila <- fila[! fila %in% c("Steve")]
fila
## c)
fila <- append(fila, "Pam", after=0)
fila
## d)
fila <- fila[! fila %in% "Barry"]
fila
## e)
pos_Alison <- c(3)
fila <- fila[-pos_Alison]
fila
## Posição de Russell
pos_Russell <- fila == "Russell"
which(pos_Russell, arr.ind=TRUE)

# 7
quantidade <- scan()
preco <- scan()
print(sum(quantidae * preco))
