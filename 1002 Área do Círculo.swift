import Foundation

let raio = Double(readLine()!)!
let PI = 3.14159

/* Calcula a área, transforma em String formata de modo que 
valor de ponto flutuante seja arredondado para 4 casas decimais */
let area = PI * (raio * raio)
let stringFinal = String(format: "A=%.4lf", area)  // Formata para mostrar 4 casas decimais mesmo que as últimas sejam 0
print(stringFinal)