import UIKit

let array = [1,[1,2,[3]],4,[1,2,[],[[3]]]] as [Any]

func flattenToInt(_ data: Array<Any>) -> [Int] {
    var flattenArray = [Int]()
    
    func getItem(of array: Array<Any>) {
        for item in array {
            if item is Int {
                flattenArray.append(item as! Int)
            } else {
                getItem(of: item as! Array<Any>)
            }
        }
    }
    
    getItem(of: data)
    return flattenArray
}

var value = flattenToInt(array)
print(value)
