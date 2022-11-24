//
//  QuestionList.swift
//  TakeQuiz
//
//  Created by mac on 12/11/22.
//

import Foundation

extension QuestionListVC {
    
    

    
    func appendDataForMusic(){
        
        arrQuestions.append(QuestionAns(que: "1. In which country was a little night music set? ", ans: "sweden"))
        arrQuestions.append(QuestionAns(que: "2. The Paradiso concert hall is in which european city?", ans: "Amsterdam"))
        arrQuestions.append(QuestionAns(que: "3. where does calypso originate", ans: "Trinidad and Tobago"))
        arrQuestions.append(QuestionAns(que: "4. What country are the pipa and erhu from?", ans: "China"))
        arrQuestions.append(QuestionAns(que: "5. What is the home country of the spider murphy gang?", ans: "Germany"))
        arrQuestions.append(QuestionAns(que: "6. What instruments are used in klezmer music?", ans: "Klezmer band"))
        arrQuestions.append(QuestionAns(que: "7. What singer has had a Billboard No. 1 hit in each of the last four decades?", ans: "Mariah Carey"))
        arrQuestions.append(QuestionAns(que: "8. What was Freddie Mercury's real name?", ans: "Farrokh Bulsara"))
        arrQuestions.append(QuestionAns(que: "9. Who was the very first American Idol winner?", ans: "Kelly Clarkson"))
        arrQuestions.append(QuestionAns(que: "10. Which member of the Avengers had a brief stint as a pop star?", ans: "Brie Larson"))
        arrQuestions.append(QuestionAns(que: "11. What pop star wrote songs for Ariana Grande, Miley Cyrus, Britney Spears and Alice Cooper?", ans: " Kesha"))
        arrQuestions.append(QuestionAns(que: "12.  Before Bleachers and fun., Jack Antonoff fronted what band?", ans: "Steel Train"))
    }
    func appendDataForElectronics(){
        
        arrQuestions.append(QuestionAns(que: "1. Which resistive component is designed to be temprature sensitive?", ans: "Thermistor"))
        arrQuestions.append(QuestionAns(que: "2. What part of an atom has no electrical charge", ans: "Neutron"))
        arrQuestions.append(QuestionAns(que: "3. An ammeter is used to measure ..........", ans: "Current"))
        arrQuestions.append(QuestionAns(que: "4. What is a characteristic of a secondary cell?", ans: "Rechargeable"))
        arrQuestions.append(QuestionAns(que: "5. What metal is the best conducto of electricity?", ans: "Silver"))
        arrQuestions.append(QuestionAns(que: "6. An electronic component used to store electric charge is …", ans: "capacitor"))
        arrQuestions.append(QuestionAns(que: "7. When will a transistor behaves as a linear device …", ans: "small signals input"))
        arrQuestions.append(QuestionAns(que: "8. What is function of linear series voltage converter?", ans: "shunt voltage converter"))
        arrQuestions.append(QuestionAns(que: "9.  Semiconductor’s have which of the following bond?", ans: "Covalent bond"))
        arrQuestions.append(QuestionAns(que: "10. Pure silicon has a resistivity of …", ans: "6000 Ω cm"))
        arrQuestions.append(QuestionAns(que: "11.  The region of semi-conductor which is lightly doped is known as …", ans: "base"))
    }
    func appendDataForHumanBody(){
        
        arrQuestions.append(QuestionAns(que: "1. What is the largest part of the human brain?", ans: "Cerebrum"))
        arrQuestions.append(QuestionAns(que: "2. What is the smallest bone in the body?", ans: "Stapes"))
        arrQuestions.append(QuestionAns(que: "3. How many Bones does an adult human have?", ans: "206"))
        arrQuestions.append(QuestionAns(que: "4. What is the largest organ in the human body?", ans: "Skin"))
        arrQuestions.append(QuestionAns(que: "5. Name the gland which control blood pressure?", ans:"Adrenal Gland"))
        arrQuestions.append(QuestionAns(que: "6. How many lungs does the human body have?", ans: "Two"))
        arrQuestions.append(QuestionAns(que: "7. What percentage of water is in the human body", ans: "60%"))
    }
}

extension QuizVC {
    
   
    
    func appendDataForMusic(){
        
        arrQuestions.append(QuestionOptions(que: "1. In which country was a little night music set? ", choices:  ["sweden", "Franch", "India","UK"], ans: "sweden"))
        
        arrQuestions.append(QuestionOptions(que: "2. The Paradiso concert hall is in which european city?", choices:  ["sweden", "Amsterdam", "India","UK"], ans: "Amsterdam"))
        
        arrQuestions.append(QuestionOptions(que: "3. where does calypso originate", choices:  ["Trinidad and Tobago", "Amsterdam", "India","UK"], ans: "Trinidad and Tobago"))
        arrQuestions.append(QuestionOptions(que: "4. What country are the pipa and erhu from?", choices:  ["Trinidad and Tobago", "Amsterdam", "India","China"], ans: "China"))
        arrQuestions.append(QuestionOptions(que: "5. What is the home country of the spider murphy gang?", choices:  ["Trinidad and Tobago", "Germany", "India","China"], ans: "Germany"))
        arrQuestions.append(QuestionOptions(que: "6. What instruments are used in klezmer music?", choices:  ["Klezmer band", "Bend", "Lock","FUFu"], ans: "Klezmer band"))
        arrQuestions.append(QuestionOptions(que: "7. What singer has had a Billboard No. 1 hit in each of the last four decades?", choices:  ["Mariah Carey", "Johan Deap", "Lara ","Dr.Stranth"], ans: "Mariah Carey"))
      
    
       
      
//        arrQuestions.append(QuestionAns(que: "7. What singer has had a Billboard No. 1 hit in each of the last four decades?", ans: "Mariah Carey"))
//        arrQuestions.append(QuestionAns(que: "8. What was Freddie Mercury's real name?", ans: "Farrokh Bulsara"))
//        arrQuestions.append(QuestionAns(que: "9. Who was the very first American Idol winner?", ans: "Kelly Clarkson"))
//        arrQuestions.append(QuestionAns(que: "10. Which member of the Avengers had a brief stint as a pop star?", ans: "Brie Larson"))
//        arrQuestions.append(QuestionAns(que: "11. What pop star wrote songs for Ariana Grande, Miley Cyrus, Britney Spears and Alice Cooper?", ans: " Kesha"))
       // arrQuestions.append(QuestionAns(que: "12.  Before Bleachers and fun., Jack Antonoff fronted what band?", ans: "Steel Train"))
    }
    
    func appendQuestions(){
        
        
        
        arrQuestions.append(QuestionOptions(que: "Which is the largest organ in the human body?", choices:  ["Heart", "Skin", "Large Intestine","Heart"], ans: "Skin"))
        arrQuestions.append(QuestionOptions(que: "Five dollars is worth how many nickels?", choices:   ["25", "50", "100","10"], ans: "100"))
        arrQuestions.append(QuestionOptions(que: "What do the letters in the GMT time zone stand for?", choices:   ["Global Meridian Time", "Greenwich Mean Time","Greenwich Mean Time", "General Median Time"], ans: "Greenwich Mean Time"))
        arrQuestions.append(QuestionOptions(que: "In which country was a little night music set? ", choices:  ["sweden", "Franch", "India","UK"], ans: "sweden"))
        
        arrQuestions.append(QuestionOptions(que: "The Paradiso concert hall is in which european city?", choices:  ["sweden", "Amsterdam", "India","UK"], ans: "Amsterdam"))
        
        arrQuestions.append(QuestionOptions(que: "where does calypso originate", choices:  ["Trinidad and Tobago", "Amsterdam", "India","UK"], ans: "Trinidad and Tobago"))
        arrQuestions.append(QuestionOptions(que: "What country are the pipa and erhu from?", choices:  ["Trinidad and Tobago", "Amsterdam", "India","China"], ans: "China"))
        arrQuestions.append(QuestionOptions(que: "What is the home country of the spider murphy gang?", choices:  ["Trinidad and Tobago", "Germany", "India","China"], ans: "Germany"))
        arrQuestions.append(QuestionOptions(que: "What instruments are used in klezmer music?", choices:  ["Klezmer band", "Bend", "Lock","FUFu"], ans: "Klezmer band"))
        arrQuestions.append(QuestionOptions(que: "What singer has had a Billboard No. 1 hit in each of the last four decades?", choices:  ["Mariah Carey", "Johan Deap", "Lara ","Dr.Stranth"], ans: "Mariah Carey"))
        
    }
    
    
    func checkAnswer(_ userAnswer:String) -> Bool {
        print(userAnswer)
        
        if userAnswer == arrQuestions[questionNumber].answer{
            score+=1
            return true;
        }
        return false;
    }
    
    func checkQuestion() -> String {
        return arrQuestions[questionNumber].question
    }
    func checkChoices() -> [String] {
        return arrQuestions[questionNumber].choice
    }
    func checkProgress() -> Float {
        return Float(questionNumber) / Float(arrQuestions.count);
    }
    func checkScore() -> Int {
        return score
    }
    
    func nextQuestion(){
        questionNumber += 1
        //        if(questionNumber==arrQuestions.count){
        //
        //
        //
        //
        //            questionNumber=0
        //            score = 0;
        //        }
    }
    func PrevQuestion(){
        questionNumber -= 1
        if(questionNumber==arrQuestions.count){
            questionNumber=0
            score = 0;
        }
    }
    
}
