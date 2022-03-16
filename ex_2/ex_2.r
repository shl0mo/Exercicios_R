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
