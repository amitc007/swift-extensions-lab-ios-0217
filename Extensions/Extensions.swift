//
//  Extensions.swift
//  Extensions
//
//  Created by ac on 1/30/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    func whisper()->String {
        return self.lowercased()
    }
    
    func shout()->String {
        return self.uppercased()
    }
    
    //
    var pigLatin:String  {
        var newStr:String = ""
        var tmpChar:Character
        var newWord:String
        
        //get words
        let strArray:[String] = self.components(separatedBy: " ")
        for (idx,word) in strArray.enumerated() {
            let charCnt = word.characters.count    //get chars
            
            if  charCnt > 1 {
                newWord = word
                tmpChar = newWord.remove(at: newWord.startIndex)
                let firstChar = newWord.remove(at: newWord.startIndex)
                if idx == 0 {
                    newStr += String(firstChar).uppercased() + newWord + String(tmpChar).lowercased() + "ay"
                } else
                {
                    newStr += " " + String(firstChar).uppercased() + newWord + String(tmpChar).lowercased() + "ay"
                }
            }
            else if charCnt == 1 {
                return self
            }
        } //for
        
        return newStr
    }
    
    //
    var points:Int {
        var cnt:Int = 0
        if self.isEmpty {
            cnt =  0
        } else
        {
            for c in self.lowercased().characters {
                switch c {
                case "a","e","i","o","u":
                    cnt += 2
                case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
                     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z": cnt += 1
                    
                default: print("skipping char")
                    
                }
                
                
            } //for
        } //else
        return cnt
    }
    
    var unicornLevel:String {
        var unicornStr:String = ""
        for c in self.characters {
            if c != " " {
                unicornStr += "🦄"
            }
        }
        return unicornStr
    }
    
}


extension Int {
    func half()->Int {  return self/2 }
    
    func isDivisible(by:Int)->Bool { return self%by == 0 }
        
    var squared:Int { return self * self  }
    
    var halved:Int { return self.half() }
}

