//THIS IS A COMMENT!!!
// A comment that is bound for test review
// Correct this comment //
func bubbleSort<T: Comparable>(_ arr: inout [T]){
    for i in 0..<arr.count - 1{
        for j in  0..<arr.count - i - 1{
            if arr[j+1] < arr[j]{
                let temp = arr[j]
                arr[j] = arr[j+1]
                arr[j+1] = temp
            } 
        }
    }
}

//Integer
var arr: [Int] = [420, 13, 69, 9, 20]

//String
//var arr: [String] = ["Ramon", "Johan", "Basti", "Rithik", "Patrick"]

print("UNSORTED")
print(arr)

bubbleSort(&arr)

print()
print("SORTED")
print(arr)