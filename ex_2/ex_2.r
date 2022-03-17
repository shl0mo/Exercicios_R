# 1
a <- 1
b <- 2
c <- 3
(a%%1==0 & b%%1==0 & c%%1==0) & (a!=b | a!=c)

# 3
adequacao_peso = 90
estado_nutricional = ''
if (adequacao_peso <= 70) {
    estado_nutricional = 'Desnutricao Grave'
} else if (adequacao_peso >= 70 & adequacao_peso < 80) {
    estado_nutricional = 'Desnutricao Moderada'
} else if (adequacao_peso >= 80 & adequacao_peso < 90) {
    estado_nutricional = 'Desnutricao Leve'
} else if (adequacao_peso >= 90 & adequacao_peso < 110) {
    estado_nutricional = 'Eutrofia (Peso Ideal)'
} else if (adequacao_peso >= 110 & adequacao_peso < 120) {
    estado_nutricional = 'Sobrepeso'
} else {
    estado_nutricional = 'Obesidade'
}
print(estado_nutricional)

# 4
A = 2
B = 4
C = 3
A_menor = A < (B + C)
B_menor = B < (A + C)
C_menor = C < (B + A)
if (A_menor & B_menor & C_menor) {
    if (A == B & A == C) {
        print('O triangulo e equilatero')
    } else if ((A == B & A != C) | (A == C & A != B) | (B == C & B != A) ) {
        print('O triangulo e isosceles')            
    } else if (A != B & A != C & B != C) {
        print('O triangulo e escaleno')
    }
} else {
    print('Os lados A, B e C não compoem um triangulo')
}

# 5
for (i in 1:100) {
    print(i)
}

# 6
entrada = c(-2, 0.5, 3)
resultado = numeric(0)
for (i in entrada) {
	if (i <= 0) {
		resultado = c(resultado, (i**3)*(-1))
	} else if (i >= 0 & i < 1) {
		resultado = c(resultado, i**2)
	} else {
		resultado = c(resultado, sqrt(i))
	}
}
print(resultado)

# 7
#x = scan()
#n = scan()
#while (n%%1 != 0 & n < 0) {
#	n = scan()
#}
#print(n)

# 8
altura_paulo = 1.50
altura_joao = 1.10
anos = 0
while (altura_joao <= altura_paulo) {
	altura_paulo = altura_paulo + 0.02
	altura_joao = altura_joao + 0.03
	anos = anos + 1
}
cm_paulo = (altura_paulo - 1.50)*100
cm_joao = (altura_joao - 1.10)*100
print(paste(c('Serao necessarios ', anos, ' anos para que Joao se torne mais alto que Paulo'), collapse = ''))
print(paste(c('Alutura de Paulo ', altura_paulo), collapse = ''))
print(paste(c('Altura de Joao ', altura_joao), collapse = ''))
print(paste(c('Quantidade de centimetros que Paulo cresceu: ', cm_paulo, ' cm'), collapse = ''))
print(paste(c('Quantidade de centimentros que Joao cresceu: ', cm_joao, ' cm'), collapse = ''))

# 9
x = 0
y = 0
jogadas = 0
while (x + y != 7 & x + y != 11) {
	x = sample(1:6, size = 1)
	y = sample(1:6, size = 1)
	soma = x + y
	print(paste('x', x))
	print(paste('y', y))
	print(paste('soma', soma))
	jogadas = jogadas + 1
}
print(paste('Total de jogadas', jogadas))

# 10
area = function (base, altura) {
	return(base * altura)
}
print(area(4, 4))

# 13
vetor = c(1,1,2, 2,2,3,4,4,4,4)
moda = function (vetor) {
    valores_unicos = unique(vetor)
	vetor_ocorr = numeric(0)
	for (i in valores_unicos) {
		ocorr = 0
 		for (j in vetor) {
 			if (j == i) {
 				ocorr = ocorr + 1	
 			}
 		}
 		vetor_ocorr = c(vetor_ocorr, ocorr)
	}
	print(valores_unicos[match(max(vetor_ocorr), vetor_ocorr)])
}
apply(iris, 2, moda)
