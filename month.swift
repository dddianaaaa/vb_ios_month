import Foundation

let amountOfDays : Array<Int> = [31,28,31,
30,31,30,
31,30,31,
30,30,
31]
let monthName : [String] = ["Январь","Февраль",
"Март","Апрель","Май",
"Июнь","Июль","Август",
"Сентябрь","Октябрь","Ноябрь",
"Декабрь"]
print("Кол-во дней без названия месяца\n")

for days in amountOfDays {
print(days)
}
print("-----------------")
print("Название месяца и кол-во дней\n")
for i in 0..<amountOfDays.count {
print(monthName[i],amountOfDays[i])
}
// print("-----------------")
// print("Название месяца и кол-во дней c использованием Словаря\n")
// let tuples = [ "Январь": 31,"Февраль": 28,"Март": 31,"Апрель": 30,"Май": 31,
// "Июнь": 30,"Июль": 31,"Август": 30,
// "Сентябрь": 31,"Октябрь": 30,"Ноябрь": 30,
// "Декабрь": 31]
// for(month,days) in tuples{
// print(month,days)
// }

print("-----------------")
print("Название месяца и кол-во дней c использованием кортежа\n")

var myTupleArray: [(String, Int)] = []
myTupleArray.append(("Январь", 31))
myTupleArray.append(("Февраль", 28))
myTupleArray.append(("Март", 31))
myTupleArray.append(("Апрель", 30))
myTupleArray.append(("Май", 31))
myTupleArray.append(("Июнь", 30))
myTupleArray.append(("Июль", 31))
myTupleArray.append(("Август", 30))
myTupleArray.append(("Сентябрь", 31))
myTupleArray.append(("Октябрь", 30))
myTupleArray.append(("Ноябрь", 30))
myTupleArray.append(("Декабрь", 31))

for i in 0..<myTupleArray.count{
print(myTupleArray[i].0,myTupleArray[i].1)
}
print("-------------")
print("Тоже самое только дни в обратном порядке")
var j=11;
for i in 0..<myTupleArray.count{
print(myTupleArray[i].0,myTupleArray[j].1)
j-=1;
}

let monthRand = Int(arc4random_uniform(12)+1)
let dayRand = Int(arc4random_uniform(30)+1)
let year = 2022
var sum=0
let date = ("\(dayRand).\(monthRand).\(year)")
for i in 1..<monthRand+1{
if(i==2) {sum+=28}
else if(i%2==1) {sum+=31}
else if(i%2==0) {sum+=30}
}
print("Сумма дней от \(date) равняется \(sum) ") 
