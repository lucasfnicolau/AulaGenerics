import Foundation

var intA = 1
var intB = 2
let maiorInt = maior(intA, intB)

var doubleA = Double.pi
var doubleB = 3.14
let maiorDouble =  maior(doubleA, doubleB)

var tratorA = AgriculturalMachinery(size: 12)
var tratorB = AgriculturalMachinery(size: 783)
let maiorTrator = maior(tratorA, tratorB)

var pilha = Pilha<Int>()

pilha.push(intA)
pilha.push(intB)

//TODO: Fazer um método que recebe um Array e um elemento, retorna um Bool dizendo se o elemento se encontra no Array
func find<Element: Comparable>(element: Element, on array: [Element]) -> Bool {
    return array.contains(element)
}

//TODO: Extensão de Array contendo uma função que retorna a soma de todos os elementos, independente de qual o valor numérico
extension Array where Element: Numeric {
    func sum() -> Element {
        return self.reduce(Element.zero, { $0 + $1 })
    }
}

//TODO: Fazer um método que recebe 2 Arrays e retorna um Int referente a quantidade de elementos presentes em ambos os Arrays
//BONUS TODO: Fazer o método acima receber N arrays
func numberOfCommonItems<Element: Comparable>(on arrA: Array<Element>, and arrB: Array<Element>) -> Int {
    var copyB = arrB
    var counter = 0

    for element in arrA {
        if find(element: element, on: copyB) {
            copyB.removeAll { $0 == element }
            counter += 1
        }
    }

    return counter
}

let a = [1, 2, 3, 4, 5, 5, 5, 5, 5, 6, 6, 6, 8]
let b = [3, 5, 1, 4, 4, 4, 4, 4, 7, 10, 11, 22]

numberOfCommonItems(on: a, and: b)
