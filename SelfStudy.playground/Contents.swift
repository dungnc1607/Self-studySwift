//: Playground - noun: a place where people can play

import UIKit

//MARK: - Array

var arr = [Int]()

arr = Array(repeating: 5, count: 3)

for (index, value) in arr.enumerated(){
    print(index, value)
}

//Enumerated(): Returns a sequence of pairs (n, x), where n represents a consecutive integer starting at zero and x represents an element of the sequence.


//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//MARK: - Set:Tập hợp ko có thứ tự, in ra sẽ đảo lung tung vị trí các phần tử
var starWarSet:Set<String> = ["Skywalker", "Luke", "Yoda"]
starWarSet.insert("Leia")
print(starWarSet)
starWarSet.sorted()
starWarSet.remove("Luke")
starWarSet.remove("Squall")

if starWarSet.contains("Skywalker") {
    print("List contain this string")
}

let set1:Set = [1,2,3,4,5,6]
let set2:Set = [3,4,7,8,9,0]

let set3 = set1.intersection(set2) //Lấy giao của 2 set
print(set3)

let set4 = set1.union(set2).sorted() //Lấy hợp của 2 set
print(set4)

let set5 = set1.subtracting(set2) //Lấy những phần tử thuộc 1 nhưng ko thuộc 2
print(set5)

let set6 = set1.symmetricDifference(set2).sorted() //Lấy những phần tử khác nhau/ Ngược lại của intersection

let fruits:Set = ["🍎", "🍐"]
let fruitsAndDrinks:Set = ["🍎", "🍐", "🍺", "🥛"]
fruitsAndDrinks.isSuperset(of: fruits) //Có phải tập cha
fruits.isSubset(of: fruitsAndDrinks) //Có phải tập con

let animals = ["🐸", "🦊", "🐼"]
fruits.isDisjoint(with: animals) //Khác hoàn toàn


//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//MARK: - Dictionary
let myDict = ["Name":"Squall", "Age":"29", "Gender":"Male"]
let allValues = [String](myDict.values)


