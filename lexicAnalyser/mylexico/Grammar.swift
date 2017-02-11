//
//  Grammar.swift
//  mylexico
//
//  Created by Daniel Moreno on 5/23/16.
//  Copyright (c) 2016 Daniel Moreno. All rights reserved.
//

import Foundation

class Grammar{
    var state = 0
    var x = 0
    var line = 1
    var Errors : [String] = []
    var tokenIndObj: [TokenIndexObj] = []
    var tokenArray: [TokenIndexObj] = []
    var size = 0
    var numberOfInstructions = 0
    init(tokenIndObj:[TokenIndexObj], tokenTable:[TokenIndexObj]){
        self.tokenIndObj = tokenIndObj
        self.size = tokenIndObj.count
        Sintax()
    }
    //********************************************************   1
    func Sintax(){
    
        
        var myarray=0
        
        for  self.x = 0; x < size; x++ {
            EraseBreakLines()
            Libraries()
            EraseBreakLines()
            Classes()
            
        }
        
        for var c = 0; c<Errors.count; c++ {
        println(Errors[c])
        }
        
        if Errors.count == 0 {
        println("Archivo leido sin errores")
        }
    }
    //********************************************************   2

    
    func Libraries()
    {
        if GetToken() == "Import libraries" {
            Inc()
            if CheckAndContinue("Identificador"){
                
            }
        }
    }
    //********************************************************   3

    func Classes()
    {
        if GetToken() == "Access level" {
            Inc()
            if CheckAndContinue("Object") {

                if CheckAndContinue("Left parenthesis") {
                    
                    if CheckAndContinue("Identificador"){
                        if IndexCheckAndContinue("Logic operator",  index: 42){

                            if IndexCheckAndContinue("Logic operator",  index: 41){

                                if CheckAndContinue("Colon") {
                                   
                                    
                                    EraseBreakLines()

                                    ClassBlock()
                                    
                                    if GetToken() == "Right parenthesis" {
                                        
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    //********************************************************  4
    func CheckAndContinue(token: String) -> Bool{
        if GetToken() == token  {
        Inc()
        }else{
            PrintError(token)
        }
    return true
        
    }
    //********************************************************  5
    func IndexCheckAndContinue(token:String, index: Int) -> Bool{
        if GetIndex() == index  {
            Inc()
        }else{
            PrintError(token)
        }
        return true
        
    }
    //********************************************************  6
    func ClassBlock ()
    {
        EraseBreakLines()
        if GetToken() == "Access level"{
        Constructor()

        Method()
        ClassBlock()
        }
    }
    //********************************************************  7
    func ObjCreation(){
        EraseBreakLines()
        if CheckAndContinue("Identificador"){
            if CheckAndContinue("Identificador") {
                if CheckAndContinue("Assignation") {
                    if CheckAndContinue("New") {
                        if CheckAndContinue("Identificador"){

                        }
                    }
                }
            }
        }
    }
    //********************************************************  8
    func Method(){
        func Constructor(){
            if CheckAndContinue("Access level"){
                if CheckAndContinue("Return type"){
                if CheckAndContinue("Left parenthesis") {
                    if CheckAndContinue("Identificador"){
                        if IndexCheckAndContinue("Logic operator", index: 42){
                            Parameters()
                            if IndexCheckAndContinue("Logic operator", index: 41){
                                if CheckAndContinue("Colon"){
                                    
                                    EraseBreakLines()
                                    
                                    Instructions()
                                    
                                    EraseBreakLines()
                                    
                                    if CheckAndContinue("Right parenthesis"){
                                    }
                                }
                            }
                            }
                        }
                    }
                }
        }
    }
        ClassBlock()
    }
    
    //********************************************************  9
    
    func Constructor(){
        if CheckAndContinue("Access level"){
            if CheckAndContinue("Left parenthesis"){
                if CheckAndContinue("Identificador"){
                     if IndexCheckAndContinue("Logic operator", index: 42){
                        Parameters()
                         if IndexCheckAndContinue("Logic operator", index: 41){
                           if CheckAndContinue("Colon"){
                                
                                EraseBreakLines()

                                
                                Instructions()
                                
                                    
                            
                                if CheckAndContinue("Right parenthesis"){
                                    EraseBreakLines()
                    
                                    
                                }
                            }
                        }
                    }
                }
            }
        }
        ClassBlock()
    }
    //********************************************************  10

    func Switch()
    {
     
                Values()
        
        
                if CheckAndContinue("Colon"){

                    Case()
                    
                    if CheckAndContinue("Right parenthesis"){
                        EraseBreakLines()
                        
                }
        }
    }
    
    //********************************************************  11

    func MathClass(){
        if CheckAndContinue("Math Class"){
           if CheckAndContinue("Dot"){
            if CheckAndContinue("Math property"){
                
                }
                
            }
        }
        
    }
    //********************************************************  12

    func Case(){
        
        EraseBreakLines()
        
        if GetToken() == "Option"
        {
            
             if CheckAndContinue("Option"){
            Values()

            if CheckAndContinue("Colon"){
                EraseBreakLines()

                Instructions()
                
                EraseBreakLines()

                if CheckAndContinue("Exit instruction"){
                    
                    Case()
                    
                    }
                }
            }
        }
        
    }
    //********************************************************  13
    func Else(){
        EraseBreakLines()
        if GetToken() == "Conditional"{
        if CheckAndContinue("Conditional"){
            if CheckAndContinue("Colon"){
                Instructions()
            }
        }
            Else()
        }

    }
    //********************************************************  14

    func Ifcondition(){
        Condition()
        if CheckAndContinue("Colon"){

            EraseBreakLines()

            Instructions()
            Else()
            
            if CheckAndContinue("Right parenthesis"){
                EraseBreakLines()
                
            }
        }
    }
    //******************    15
    func VarDeclaration(){
        
        if CheckAndContinue("Identificador"){
            
            if GetToken() != "Line Break" {
                if CheckAndContinue("Assignation"){

                    Values()
                    
                }
            }
            
            
            
        }
        
    }
    
    //********************************************************  16

    func Condition()
    {
        Values()
        if GetToken() == "Logic operator"{
            Inc()
            if(Values()){
                if tokenIndObj[x].GetIndex() == 39 || tokenIndObj[x].GetIndex() == 40 {
                    Inc()
                    Condition()
                }
            }else {PrintError("Value")}
        }
    }
    //********************************************************  17
    func MethodCall(){
        EraseBreakLines()
        if CheckAndContinue("Identificador"){
           if CheckAndContinue("Logic operator"){
                if CheckAndContinue("Logic operator"){
                }
            }
        }
    }
    //********************************************************  18
    func ForCycle(){
        if CheckAndContinue("Data type"){
        VarDeclaration()
        if CheckAndContinue("Semicolon"){
                Condition()
            if CheckAndContinue("Semicolon") {
                Increment()
                if CheckAndContinue("Colon"){
                EraseBreakLines()
                Instructions()
                EraseBreakLines()
                    if CheckAndContinue("Right parenthesis"){
                    
                    }
                }
            }
            }
        
        }
    }
    //********************************************************  19
    func Increment(){
        if CheckAndContinue("Identificador"){
            if CheckAndContinue("Arimethic operator"){
                if CheckAndContinue("Arimethic operator"){
                    
                }
            }
        }
    }
    //********************************************************  20
    func ArimethicOp(){
        
        if CheckAndContinue("Identificador"){
            if CheckAndContinue("Assignation"){
                Values()
                if CheckAndContinue("Arimethic operator"){
                Values()

                }
            }
        }
    }
    //********************************************************  21
    func FontClass(){
        if CheckAndContinue("Font class"){
            if CheckAndContinue("Dot"){
                if CheckAndContinue("Font property") {
                
                }
            }
        }
    }
    //********************************************************  22
    func ButtonClass(){
        if CheckAndContinue("Button class"){
            if CheckAndContinue("Dot"){
                if CheckAndContinue("Button property"){
                
                }
            }
        }
    }
    //********************************************************  23
    func WhileLoop(){
    Condition()
        if CheckAndContinue("Colon") {
            EraseBreakLines()
            Instructions()
            if CheckAndContinue("Right parenthesis"){
            
            }
        }
    
    }
    //********************************************************
    func Instructions()
    {

        EraseBreakLines()
        
        if GetToken() == "Left parenthesis" {
            Inc()
            
            if GetToken() == "Loop" &&  tokenIndObj[x].GetIndex() == 18{
                Inc()
                ForCycle()
                Instructions()
            }
            
            if GetToken() == "Loop" &&  tokenIndObj[x].GetIndex() == 17{
                Inc()
                WhileLoop()
                Instructions()
            }
            
            if GetToken() == "Conditional" &&  tokenIndObj[x].GetIndex() == 1{
                Inc()
                
                Ifcondition()
                Instructions()
            }
            
            if GetToken() == "Selective" &&  tokenIndObj[x].GetIndex() == 4 {
                Inc()

                Switch()
                Instructions()
                
            }
            

            
        }
        if GetToken() == "Array class" {
            ArrayDeclaration()
            Instructions()
        }
        if GetToken() == "Font class" {
            FontClass()
            Instructions()
        }
        if GetToken() == "Button class"{
            ButtonClass()
            Instructions()
        }
        
        if GetToken() == "Data type" {
            Inc()
            VarDeclaration()
            Instructions()
        }
        
        if GetToken() == "Identificador"{
            if tokenIndObj[x+1].GetToken() == "Logic operator"{
                MethodCall()
                Instructions()
            }
            
            if tokenIndObj[x+1].GetToken() == "Assignation" {

                ArimethicOp()
                Instructions()
            }
            
            ObjCreation()
            Instructions()
        }
        if GetToken() == "Math Class"{
            MathClass()
            Instructions()

        }
        
    }
    
    //********************************************************  23


    func Parameters(){
        if GetToken() == "Data type" {
            Inc()
            
            if GetToken() == "Identificador" {
                Inc()
                if GetToken() == "Comma" {
                    Inc()
                    Parameters()
                }
                
                EraseBreakLines()
                
            }
            else {PrintError("Id")}
        }else {PrintError("Data Type")}

        }
    //********************************************************  24

    func Values() -> Bool{
        if GetToken() == "Digits" || GetToken() == "Identificador" {
            Inc()
            
            return true
        } else {
            PrintError("Id or Digit")
            return false
        }
    
    }
    //********************************************************  25
    func ArrayDeclaration(){
        if CheckAndContinue("Array class"){
            if CheckAndContinue("Identificador"){
                if CheckAndContinue("Assignation"){
                   if CheckAndContinue("New"){
                    if CheckAndContinue("Array class"){
                        if CheckAndContinue("Left bracket"){
                            Values()
                            if CheckAndContinue("Right bracket"){
                                
                            }
                        }
                    }
                    }
                }
            }
        }
    
    }

    
    //********************************************************26
    func Stack(){
        EraseBreakLines()
        if CheckAndContinue("Stack"){
            if CheckAndContinue("Identificador") {
                if CheckAndContinue("Assignation") {
                    if CheckAndContinue("New") {
                        if CheckAndContinue("Stack"){
                            
                        }
                    }
                }
            }
        }
    }
    //********************************************************27
    func Queue(){
        EraseBreakLines()
        if CheckAndContinue("Queue"){
            if CheckAndContinue("Identificador") {
                if CheckAndContinue("Assignation") {
                    if CheckAndContinue("New") {
                        if CheckAndContinue("Identificador"){
                            
                        }
                    }
                }
            }
        }
    }
    //********************************************************28
    func List(){
        EraseBreakLines()
        if CheckAndContinue("List"){
            if CheckAndContinue("Identificador") {
                if CheckAndContinue("Assignation") {
                    if CheckAndContinue("New") {
                        if CheckAndContinue("List"){
                            
                        }
                    }
                }
            }
        }
    }
    //********************************************************29
    func Dictionary(){
        EraseBreakLines()
        if CheckAndContinue("Dict"){
            if CheckAndContinue("Identificador") {
                if CheckAndContinue("Assignation") {
                    if CheckAndContinue("New") {
                        if CheckAndContinue("Dict"){
                            
                        }
                    }
                }
            }
        }
    }
    //********************************************************30
    func Numeration(){
        EraseBreakLines()
        if CheckAndContinue("Num"){
            if CheckAndContinue("Identificador") {
                if CheckAndContinue("Assignation") {
                    if CheckAndContinue("New") {
                        if CheckAndContinue("Identificador"){
                            
                        }
                    }
                }
            }
        }
    }
    //********************************************************


    func Inc() {
        self.x += 1
    }
    //********************************************************
    func GetToken() -> String{
        return tokenIndObj[self.x].GetToken();
    }
    //********************************************************
    func GetWord() -> String{
        return tokenIndObj[self.x].GetWord();
    }
    //********************************************************
    func GetIndex() -> Int{
        return tokenIndObj[self.x].GetIndex();
    }
    //*******8
    func Print(){
    println(tokenIndObj[x].GetToken())
    }
    //***************************************************
    func EraseBreakLines(){
        while GetToken() == "Line Break"  && x<size-1 {
            self.x += 1
            self.line += 1
        }
        
    }
    //***************************************************
    func PrintError(expected: String){
        
    Errors.append("Error en la linea " + "\(line)" + ": Se esperaba " + "'" + "\(expected)" + "'" + ", pero se encontro " + "'" + "\(GetWord())" + "'" + " ");
        Inc()
        EraseBreakLines()
    }
    
    }