//
//  Person.swift
//  swift-people
//
//  Created by Tanira Wiggins on 10/3/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Person{
    let name: String
    var ageInYears: Int?
    var skills: [String] = [ ]
    
    var qualifiedTutor:Bool{
        if skills.count >= 4{
            return true
        } else {
            
        }
        return false
    }
    
    
    
    init(name:String,ageInYears:Int?){
        self.name = name
        self.ageInYears = ageInYears
    }
    
    
    
    convenience init(name:String){
        self.init(name:name, ageInYears:nil)
        
    }
    
    init(){
        self.name = "John Doe"
        self.ageInYears = nil
    }
    
    
    func celebrateBirthday()->String{
        
        let defaultString = ""
        
        if ageInYears ==  nil {
            return "HAPPY BIRTHDAY, \(name.uppercased())!!!"
        }else if ageInYears != nil {
            if let age = ageInYears{
                self.ageInYears = age + 1
            }
            return "HAPPY \(self.ageInYears!)\(self.ageInYears!.ordinal().uppercased()) BIRTHDAY, \(name.uppercased())!!!"
        }
        return defaultString
    }
    
    func learnSkillBash(){
        if !skills.contains("bash")  {
            skills.append("bash")
            
        }
    }
    
    func learnSkillXcode(){
        if !skills.contains("Xcode"){
            skills.append("Xcode")
            
        }
    }
    func learnSkillObjectiveC(){
        if !skills.contains("Objective-C") {
            skills.append("Objective-C")
        }
    
        
        
    }
    
    func learnSkillSwift(){
        if !skills.contains("Swift"){
            skills.append("Swift")
        }
        
        
    }
    
    func learnSkillInterfaceBuilder(){
        if !skills.contains("Interface Builder"){
            skills.append("Interface Builder")
            
        }
    }
}
