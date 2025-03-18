import UIKit


 
 /*
  option 1
func namber (_ n: Double) -> Double {
    sqrt(n)
}

namber(10)
*/


// option 2


enum name: Error {
    case smallHard, zero, noRoot
}

func nameNamber (_ i: Double) throws -> Double {
    
    if i < 0 || i > 10_000{
        throw name.smallHard
    } else if i == 0 {
        throw name.zero
    }
    
    var a:Double = 1
    var d:Double = 0
    
    while a > 0 {
        d += 1
        if (d * d) == i {
            return d
        } else if d == 100 {
            throw name.noRoot
        }
    }
    return d
}


 do {
    try nameNamber(100)
 } catch name.smallHard {
    print("Число не входит в диапазон от 0 до 10000.")
 } catch name.zero {
     print("Число равно нулю.")
 } catch name.noRoot {
     print("Нет корня.")
 }



