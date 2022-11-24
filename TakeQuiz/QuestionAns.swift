//
//  QuestionAns.swift
//  TakeQuiz
//
//  Created by mac on 12/11/22.
//

import Foundation

struct QuestionAns {
    
    let question:String
    let Answer:String
    
    init(que:String , ans:String){
        question = que
        Answer = ans
    }
}

struct QuestionOptions{
    
    let question:String
    let choice:[String]
    let answer:String
    
    init(que:String ,choices: [String], ans:String){
        
        question = que
        choice = choices
        answer = ans
    }
}
