//
//  UserInfo.swift
//  LogInLogOut
//
//  Created by Вячеслав Горбатенко on 09.11.2022.
//

struct User {
    let username: String
    var password: String
    let person: Person
}

struct Person {
    let firstName: String
    let secondName: String
    
    var city: String
    
    var married: Bool
    let children: Bool
    var childrenQty: Int
    
    var working: Bool
    var company: String
    var department: String
    var position: String
}

let slava = Person(
    firstName: "Vyacheslav",
    secondName: "Gorbatenko",
    
    city: "Saint Petersburg",
    
    married: true,
    children: true,
    childrenQty: 1,
    
    working: true,
    company: "VoIPline Telecom / VoIPcloud Wholesale",
    department: "Development",
    position: "Product owner"
)

func initializeUser() -> User {
    let newUser = User(username: "slava",
                       password: "qwerty2022",
                       person: slava)
    return newUser
}

