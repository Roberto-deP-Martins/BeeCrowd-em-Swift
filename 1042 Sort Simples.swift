import Foundation

func mostraLista(array : [Any]) {
    for i in array {
        print(i)
    }
}

let entrada = readLine()!.split(separator: " ")
var entradaInt = entrada.map {Int($0) ?? 0}
entradaInt.sort()
mostraLista(array: entradaInt)
print() // Separa a lista ordenada da lista na ordem original
mostraLista(array: entrada)
