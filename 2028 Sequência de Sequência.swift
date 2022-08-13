import Foundation

var input: String?
var caseNumber = 1
repeat {
    input = readLine()
    if input != nil {
        let endOfSequenceValue = Int(input!)!  // Valor do fim da sequência
        var rangeStartingPoint = 0
        var sequence = ""
        var sequenceSize = 0
        for i in 0...endOfSequenceValue {
            /* Altera início do intervalo para 1 a partir de i == 1 para 
            repetir os elementos no número correto de vezes */
            if i == 1 {
                rangeStartingPoint = 1
            }

            for k in rangeStartingPoint...i {  // Adiciona i à sequência entre o início do intervalo e i
                if k == i  && i == endOfSequenceValue {  // Último elemento da sequência
                    sequence += "\(i)"
                }
                else {
                    sequence += "\(i) "
                }
                sequenceSize += 1
            }
        }
        var endOfString = "numero"
        if sequenceSize > 1 {  // Pluraliza "numero" se a sequência tiver mais de um elemento
            endOfString += "s"
        }

        print("Caso \(caseNumber): \(sequenceSize) \(endOfString)\n\(sequence)\n")
        caseNumber += 1
    }
} while input != nil  // Repete até não haver mais nada a ser lido (EOF)