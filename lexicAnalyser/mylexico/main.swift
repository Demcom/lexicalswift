//
//  main.swift
//  mylexico
//
//  Created by Daniel Moreno on 3/18/16.
//  Copyright (c) 2016 Daniel Moreno. All rights reserved.
//
import Foundation

var messageArray = [
    "Comma",
    "Condicional",
    "Condicional",
    "Condicional",
    "Selectiva",
    "Opcion",
    "Tipo de dato",
    "Tipo de dato",
    "Tipo de dato",
    "Tipo de dato",
    "Tipo de dato",
    "Tipo de dato",
    "Tipo de dato",
    "Tipo de dato",
    "Tipo de dato",
    "Tipo de dato",
    "Tipo de dato",
    "Ciclo",
    "Ciclo",
    "Ciclo",
    "Ciclo",
    "Retorna dato",
    "Funcion",
    "Retorna tipo",
    "Nivel de accesso",
    "Nivel de accesso",
    "Nivel de accesso",
    "Referencia",
    "Clase",
    "Importar librerias",
    "Control de errores",
    "Control de errores",
    "Control de errores",
    "Defecto",
    "Instruccion de salida",
    "Valor nulo",
    "Dato boleano",
    "Dato boleano",
    "Modificador",
    "Operador logico",
    "Operador logico",
    "Operador logico",
    "Operador logico",
    "Operador logico",
    "Operador logico",
    "Identificador",
    "Asignador de valor",
    "Metodo virtual",
    "Enumeracion",
    "Evento",
    "Estructura",
    "Operador aritmetico",
    "Operador aritmetico",
    "Operador aritmetico",
    "Operador aritmetico",
    "Operador aritmetico",
    "Operador aritmetico",
    "Asignacion",
    "Comentario",
    "Importar librerias",
    "Clase math",
    "Propiedad math",
    "Propiedad math",
    "Propiedad math",
    "Propiedad math",
    "Propiedad math",
    "Propiedad math",
    "Propiedad math",
    "Clase padre",
    "Paquete",
    "Parentesis izquierdo",
    "Parentesis derecho",
    "Llave izquierda",
    "Llave derecha",
    "Corchete izquierdo",
    "Corchete derecho",
    "Entrada de cadena",
    "Entrada de caracter",
    "Dos puntos",
    "Punto y coma",
    "Delegate",
    "Array class",
    "Array property",
    "Array property",
    "Array property",
    "Array property",
    "String classs",
    "String property",
    "Array property",
    "Array property",
    "Error reporter",
    "Font class",
    "Font property",
    "Font property",
    "Font property",
    "Button class",
    "Button property",
    "Component property",
    "Component property",
    "Component property",
    "Component property",
    "TextBox class",
    "View class",
    "Label class",
    "Combo box class",
    "Image Class",
    "Regula Exp. class",
    "KeyBoard class",
    "KeyBoard Property",
    "Dictionary class",
    "Dictionary porperty",
    "Dictionary porperty",
    "Dictionary porperty",
    "Dictionary porperty",
    "Dictionary porperty",
    "Initialize",
    "Point class",
    "Type-casting operator",
    "Type-casting operator",
    "Type-casting operator",
    "Type-casting operator",
    "Continue-statement",
    "Protocol",
    "Stack class",
    "Declare extentions",
    "New",
    "Identificador",
    "Digits",
    "Dot",
    "Asignacion"
]

var regexArray = [
    "^(\\,)$",
    "^(it)$",
    "^(els)$",
    "^(elif)$",
    "^(switch)$",
    "^(case)$",
    "^(intg)$",
    "^(binintg)$",
    "^(octalintg)$",
    "^(hexaintg)$",
    "^(flt)$",
    "^(strg)$",
    "^(dble)$",
    "^(bool)$",
    "^(char)$",
    "^(shrt)$",
    "^(lng)$",
    "^(while)$",
    "^(for)$",
    "^(foreach)$",
    "^(do)$",
    "^(return)$",
    "^(Funcion)$",
    "^(void)$",
    "^(plc)$",
    "^(pvt)$",
    "^(ptd)$",
    "^(this)$",
    "^(class)$",
    "^(import)$",
    "^(try)$",
    "^(catch)$",
    "^(finally)$",
    "^(default)$",
    "^(brk)$",
    "^(null)$",
    "^(true)$",
    "^(false)$",
    "^(stc)$",
    "^(and)$",
    "^(or)$",
    "^(>)$",
    "^(<)$",
    "^(>=)$",
    "^(<=)$",
    "^(a-z0-9)$",
    "(^set$)",
    "(^vrtal$)",
    "(^enum$)",
    "(^evnt$)",
    "(^str$)",
    "(^\\+$)",
    "(^\\-$)",
    "(^\\%$)",
    "(^\\/$)",
    "(^\\*$)",
    "(^\\*\\*$)",
    "(^\\=$)",
    "(^\\#$)",
    "(^import$)",
    "(^Math$)",
    "(^Sin$)",
    "(^Cos$)",
    "(^Tan$)",
    "(^Abs$)",
    "(^Pow$)",
    "(^Sqrt$)",
    "(^Round$)",
    "(^Implements$)",
    "(^Pkg$)",
    "(^\\($)",
    "(^\\)$)",
    "(^\\{$)",
    "(^\\}$)",
    "(^\\[$)",
    "(^\\]$)",
    "(^\\\"$)",
    "(^\\'$)",
    "(^\\:$)",
    "(^\\;$)",
    "(^delegate$)",
    "(^Array$)",
    "(^Clr$)",
    "(^Len$)",
    "(^Cpy $)",
    "(^Srt$)",
    "(^String$)",
    "(^Cmp$)",
    "(^Ccat$)",
    "(^Append$)",
    "(^throw$)",
    "(^Font$)",
    "(^Size$)",
    "(^Type$)",
    "(^Bold$)",
    "(^Btn$)",
    "(^Name$)",
    "(^Position$)",
    "(^Size$)",
    "(^Color$)",
    "(^Txt$)",
    "(^TextBx$)",
    "(^View$)",
    "(^Lbl$)",
    "(^ComboBx$)",
    "(^Img$)",
    "(^RegEx$)",
    "(^KeyBoard$)",
    "(^kstandard$)",
    "(^Dictionary$)",
    "(^pop$)",
    "(^push$)",
    "(^removeAtId$)",
    "(^removeAll$)",
    "(^Update$)",
    "(^init$)",
    "(^Point$)",
    "(^is$)",
    "(^as$)",
    "(^as?$)",
    "(^as!$)",
    "(^continue$)",
    "(^protocol$)",
    "(^Stack$)",
    "(^extension$)",
    "(^new$)",
    "(^([a-zA-Z])([a-zA-Z0-9])*$)",
    "(^[0-9]+$)",
    "(^.$)",
    "(^=$)"
]


//Estructura to compare the RegExp
struct RegexHelper {
    let regex: NSRegularExpression?
    
    init(_ pattern: String) {
        var error: NSError?
        regex = NSRegularExpression(pattern: pattern,
            options: nil,
            error: &error)
    }
    
    func match(input: String) -> Bool {
        if let matches = regex?.matchesInString(input,
            options: nil,
            range: NSMakeRange(0, count(input))) {
                return matches.count > 0
        } else {
            return false
        }
    }
}

//check if the regular expressions matches
func CheckRegularExpression(input: String, word: String)->TokenIndexObj
{
    
    //Token array
    

    var obj: TokenIndexObj = TokenIndexObj(token: "Error", index: 0, word: "Inidentificable")
    
    for var i = 0; i<regexArray.count; i++
    {
        if RegexHelper(regexArray[i]).match(input){
            
            obj = TokenIndexObj(token: messageArray[i],index: i,word: word)
            return obj
        }
    }

    
    return obj
}

//Read file func
func readFile() -> [TokenIndexObj]
{
    var tokenIndexArray = [TokenIndexObj]()
    let file = "regex 2.txt"
    
    if let dirs : [String] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true) as? [String] {
        let dir = dirs[0] //documents directory
        let path = dir.stringByAppendingPathComponent(file);
        
        //reading
        let text2 = String(contentsOfFile: path, encoding: NSUTF8StringEncoding, error: nil)
        
        
        text2?.enumerateLines({ (line,stop) -> () in
            var string = ""
            var flag=false
            let lex = Array(line);
           //println(lex)
            for var i = 0; i<lex.count; i++ {
               
                
                if RegexHelper("(^ $)").match("\(lex[i])") {
                    
                    if string != "" {
                        tokenIndexArray.append(CheckRegularExpression(string,string))
                        string = ""
                    }
                 
                    
                } else if RegexHelper("(^[a-zA-Z0-9]$)").match("\(lex[i])"){

                    string.append(lex[i])
                    
                    
                } else {
                    if string != ""{
                    tokenIndexArray.append(CheckRegularExpression(string,string))
                    string = ""
                    }
                    tokenIndexArray.append(CheckRegularExpression("\(lex[i])","\(lex[i])"))
                    
                }
                
                
            }
            if string != "" {
                tokenIndexArray.append(CheckRegularExpression(string,string))
            }
            
            
            var lineBreak: TokenIndexObj = TokenIndexObj(token: "Line Break", index: 777,word: "Line Break")
            tokenIndexArray.append(lineBreak)
        })
        
        
        /*for var i = 0; i<tokenIndexArray.count; i++ {
            
            println("\(tokenIndexArray[i].GetIndex())" + "  -  " + "\(tokenIndexArray[i].GetToken())" + "  -  " + "\(tokenIndexArray[i].GetWord())")
            
        }*/
    }
    return tokenIndexArray
}

func CreateTokenTable() -> [TokenIndexObj]
{
    var tknarray: [TokenIndexObj] = []
    
   /* for var i = 0; i<messageArray.count; i++ {
        tknarray.append(TokenIndexObj(token: messageArray[i], index: i, word: regexArray[i]))
        println(messageArray[i]+"  -  "+regexArray[i]+"  -  "+"\(i)")
    }*/
    return tknarray
}

//main Funcion
func main()
{
    
    let myGrammar = Grammar( tokenIndObj: readFile(), tokenTable: CreateTokenTable() )
    
}



//Call main
main()
