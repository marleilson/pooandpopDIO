import UIKit
import Foundation

// Usando POO --------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// Usando POO --------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// Usando POO --------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// Usando POO --------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// Função assíncrona para obter dados de um servidor
func adotarAnimal() async throws -> String {
    // Simulando uma requisição de rede)
    try await Task.sleep(nanoseconds: 1 * 3_000_000_000)
    // A linha de codigo acima faz com que aguarde por 3 segundo
    
    // Simulação de um erro aleatório
    if Bool.random() {
        throw NSError(domain: "adoteumanimal.com.error", code: 404, userInfo: nil)
    }
    
    return "Voçê conseguiu adotar esse animal! :D"
}

// Chamada da função assíncrona
Task.init {
    do {
        let result = try await adotarAnimal()
        print(result)
    } catch {
        print("Erro ao tentar adotar esse animal:(  \(error)")
    }
}








// Usando POP --------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// Usando POP --------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// Usando POP --------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// Usando POP --------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>

protocol Imprimivel {
    func imprimir()
}


// Definindo uma struct Animal que adota o protocolo Imprimivel
struct Animal: Imprimivel {
    var nome: String
    
    
    func imprimir() {
        print("O animal escolhido foi o \(nome)")
    }
}


// Usano coleções: Dicionarios
var animais: [String: String] = ["Um": "Gato", "Dois": "Cachorro", "Tres": "Lobo", "Quatro": "Pato"]

// Usando a struct Animal

print("Escolha o animal que voçê deseja adotar! :D")
var animalEscolhido = Animal(nome: animais["Dois"]!)
animalEscolhido.imprimir()


switch animalEscolhido.nome {
case "Gato":
    print("Miauuuuuuu!")
case "Cachorro":
    print("Au! Au!")
case "Lobo":
    print("Auuuuuuuuuuuuuu!")
case "Pato":
    print("Beeeeeeeeeeê!")
default:
    print("Parece que nenhum animal foi escolhido :(")
}

// Usando closures somar patas
let somarpatas: (Int, Int) -> Int = { a, b in
    return a + b
}

let patas = somarpatas(2, 2)
print("Ele possui \(patas) patas")
print("Aguardando requisição do servidor...")

