import UIKit


func printTimesTables(for number: Int = 5, end: Int = 6) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)
printTimesTables()



func fireArrow(skillLevel: Int = 1) -> String {
    switch skillLevel {
    case 1...3:
        "You missed the target."
    case 4...7:
        "You hit the target."
    default:
        "Great shot!"
    }
}
fireArrow()

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}


let string = "1234"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}
