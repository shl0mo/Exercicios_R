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
