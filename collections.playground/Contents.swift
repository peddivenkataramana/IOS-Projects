import UIKit

var greeting = "Hello, playground"


var courses = [1:"abc",2:"def",3:"qwe"]
print(courses)


courses[72]="dww"

print(courses)

courses.removeValue(forKey: 1)

print(courses)
print(courses.count)


for(key,value) in courses{
    print(key)
}
for(key,value) in courses{
    print(value)
}

for(key,value) in courses{
    print("\(key) : \(value)")
}

var p : Set<String> = ["David","virat","kane","steve"]

p.insert("ram")

p.contains("David")

p.remove("virat")

print(p)

var a1 :Set<Int> = [1,2,3,4,5]

var b :Set<Int> = [4,2,9,99,77]


var c :Set<Int> = a1.union(b)
print(c)

var d :Set<Int> = a1.subtracting(b)
print(d)

var e :Set<Int> = b.subtracting(a1)
print(e)

var f :Set<Int> = a1.symmetricDifference(b)
print(f)


print(c.isSubset(of: a1))

var g :Set<Int> = a1.intersection(b)
print(g)
                  
//Array


var arr :[Int] = [1,2,3,4]

arr.append(3)

print(arr)

arr.sort()
print(arr)


arr.reverse()
print(arr)


arr.insert(23, at: 2)
print(arr)

for value in arr.enumerated() {
    print(value)
}

arr.remove(at: 0)
print(arr)
