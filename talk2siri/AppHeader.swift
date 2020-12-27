//
//  AppHeader.swift
//  talk2siri
//
//  Created by Girish Adiga on 8/16/20.
//  Copyright © 2020 Girish Adiga. All rights reserved.
//

import SwiftUI

struct AppHeader: View {
    var body: some View {
        GeometryReader { g in
            HStack.init(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                Image("header-logo")
            .resizable()
            .scaledToFit()
            .frame(width: g.size.width, height: 57, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }).frame(width:g.size.width,height:g.size.height*30/100)
        }
    }
}

struct AppHeader_Previews: PreviewProvider {
    static var previews: some View {
        AppHeader()
    }
}
