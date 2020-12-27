//
//  ContentView.swift
//  talk2siri
//
//  Created by Girish Adiga on 7/4/20.
//  Copyright © 2020 Girish Adiga. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var username: String = ""
    
    var body: some View {
        GeometryReader { g in
            VStack(alignment: .center) {
                AppHeader();
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
                    LoginView();
                }).background(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .stroke( Color.gray, lineWidth: 2)
                )
                
                HStack.init(alignment: .center, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                    /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                    /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                })
                
            }
        }
    }
}

func pairs<key, value>(from dictionary: [key: value]) -> [(key,value)] {
    return Array(dictionary)
}

let myPair = pairs(from:["1": "girish","2":"samhitha"])

protocol Summable {
    static func +(lhs: Self, rhs: Self) -> Self?
}

struct Matrix {
    private var columns: Int
    private var rows: Int
    private var data: [Int]
}
func add<T: Summable>(x: T, y: T) -> T? {
    return x + y
}


extension Matrix: Summable {
    static func + (lhs: Matrix, rhs: Matrix) -> Matrix? {
 
        guard (lhs.columns == rhs.columns) else {
            return nil
        }
        guard (lhs.rows == rhs.rows) else {
            return nil
        }
        var result: Matrix
        
        for lhsItem in lhs.data {
            for rhsItem in rhs.data {
                result.data.append( lhsItem + rhsItem)
            }
        }
        return result
    }
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


