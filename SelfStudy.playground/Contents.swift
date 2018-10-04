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

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//MARK: - For
for i in stride(from: 1, to: 12, by: 3){
    print("aloha ", i)
}

// - While
var startValue = 0
while startValue < 10{
    startValue += 1
    if startValue == 5 {
        continue //ko check code trong mục này nữa
    }
    print(startValue)
}

var aString = "I am a man"
print("String before: \(aString)")
func inoutFunction(_ a: inout String){
    a = "I am a hero"
}
inoutFunction(&aString)
print("String after: \(aString)")

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//MARK: - Closure
var char = ["bcd", "ab", "xyz", "defg", "hi"]
var sortCharacter = char.sorted { (s1: String, s2:String) -> Bool in
    return s1 > s2 //sắp xếp theo điều kiện
}

let someNums = [1,2,3,4,5,6]
var squaredNum = someNums.map { (someNum) -> Int in
    return someNum * someNum
}

//Thay đổi giá trị ban đầu của struct, enum.. thêm mutating

//Cách gọi closure trong switch case
//vd:
var things = [Any]()
things.append({(name:String) -> String in "Hello, \(name)" })
for thing in things{
    switch thing {
    case let stringInClosure as (String) -> String:
        //do wtf you want
        print("Squall no 1")
    default:
        print("smt else")
    }
}


//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//MARK: - Protocol - delegate
//Delegate trao quyền cho 1 đối tượng nào đấy thực hiện 1 số chức năng nào đó, trong quá trình thực hiện thì phải gọi lại các phương thức trong protocol




