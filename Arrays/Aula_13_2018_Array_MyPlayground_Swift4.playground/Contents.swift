//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("------CRIANDO ARRAY VAZIO----------")

var ArraydeInteiros = [Int]()
print("ArraydeInteiros é do tipo [Int] com \(ArraydeInteiros.count) items.")

ArraydeInteiros.append(3)
print("Esse Array contém \(ArraydeInteiros.count) valor do typo Int")

ArraydeInteiros = []
// Agora é um array vazio mas ainda é do tipo Int

print("------CRIANDO UM ARRAY COM VALOR PADRÃO----------")
//swift 2
//var tresValoresDouble = [Double](count: 3, repeatedValue: 5.5)
//swift 3 e 4
var tresValoresDouble = [Double](repeating: 5.5, count: 3)
print("Qtd \(tresValoresDouble.count) items")


//swift 2x
//var outrosTresValoresDouble = [Double](count: 3, repeatedValue: 2.5)
//swift 3 e 4
var outrosTresValoresDouble = [Double](repeating: 2.5, count: 3)
// outrosTresValoresDouble é do tipo [Double], e iguais a [2.5, 2.5, 2.5]

var seisValoresDouble = tresValoresDouble + outrosTresValoresDouble


print("------CRIANDO UM ARRAY COM STRING----------")

//Criando array string passando o tipo
var listaDeCompras: [String] = ["Ovos", "Leite"]

//Criando array
var outraLista = ["Queijo", "Tomate"]

print("------ACESSANDO E MODIFICANDO UM ARRAY ----------")

//contando o array
print("ArraydeInteiros é do tipo [Int] com \(ArraydeInteiros.count) items.")

//testando se um array está vazio
if listaDeCompras.isEmpty {
    print("A lista está vazia.")
} else {
    print("A lista não está vazia.")
}

//adicionando um item em um array
listaDeCompras.append("Macarrão")

//Adicionalmente podemos utilizar += para incluirmos items em um array
listaDeCompras += ["Manteiga"]
//OU 
listaDeCompras += ["Chocolate", "Vinho", "Arroz"]

//acessando o primeiro item
var item1 = listaDeCompras[0]

//É possível subscrever um ítem 
listaDeCompras[0] = "Uma dúzia de ovos"

//é possível subscrever passando uma sequência de índice
listaDeCompras[4...6] = ["Banana", "Maçã"]

listaDeCompras += ["Café"]

//é possível adicionar um ítem em um índice específico
//swift 2x
//listaDeCompras.insert("Pão", atIndex: 0)
//swift 3 e 4
listaDeCompras.insert("Pão", at: 0)



//remover informando um índice
//swift 2x
//listaDeCompras.removeAtIndex(0)
//swift 3x e 4
listaDeCompras.remove(at: 0)


listaDeCompras

//remover o último item
let apples = listaDeCompras.removeLast()

//iterando sobre os itens da lista

for item in listaDeCompras {
    print(item)
}

//Se você precisar do índice e do valor use o método enumerate() para cada ítem ele retorna o indice o e valor desse item
//swift 2x
//for (index, value) in listaDeCompras.enumerate() {
//    print("Item \(index + 1): \(value)")
//}
//siwft 3x e 4
for (index, value) in listaDeCompras.enumerated() {
    print("Item \(index + 1): \(value)")
}

















