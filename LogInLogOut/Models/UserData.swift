//
//  UserInfo.swift
//  LogInLogOut
//
//  Created by Вячеслав Горбатенко on 09.11.2022.
//

struct User {
    var username: String
    var password: String
    let person: Person
    
    static func getUser() -> User {
        User(username: "slava",
             password: "qwerty2022",
             person: Person.createPerson())
    }
}

struct Person {
    let firstName: String
    let secondName: String
    var age: Int
    
    var city: String
    
    var married: Bool
    let children: Bool
    var childrenQty: Int
    
    var job: Job
    
    let photo: String
    
    static func createPerson() -> Person {
        Person(firstName: "Vyacheslav",
               secondName: "Gorbatenko",
               age: 26,
               city: "Saint Petersburg",
               married: true,
               children: true,
               childrenQty: 1,
               job: Job.getJob(),
               photo: "avatar")
    }
}

struct Job {
    var working: Bool
    var company: String
    var department: String
    var position: String
    
    static func getJob() -> Job {
        Job(working: true,
            company: "VoIPline Telecom",
            department: "Development",
            position: "Product owner")
    }
}

