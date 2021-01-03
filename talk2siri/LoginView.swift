//
//  LoginView.swift
//  talk2siri
//
//  Created by Girish Adiga on 8/16/20.
//  Copyright © 2020 Girish Adiga. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var userID: String = ""
    @State var password: String = ""
    @State private var usrIdEditing = false
    @State private var pwdEditing = false

    
    var body: some View {
        GeometryReader { g in
            ZStack {
                VStack.init(alignment:.leading) {
                    Text("Enter User ID")
                        .padding(.leading, 10.0)
                    HStack.init(alignment: .center, spacing: -10, content:  {

                        TextField("User ID", text:self.$userID, onEditingChanged: {edit in
                            self.usrIdEditing = edit;
                        })
                        .textFieldStyle(Talk2SiriTextField(focused: self.$usrIdEditing))
                        .frame(width: g.size.width*85/100, height: 45, alignment: .leading)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        
                        Image("touchid")
                            .resizable()
                            .scaledToFit()
                            .frame(width:g.size.width*10/100, height: 45, alignment: .leading)
                            .gesture(
                                            TapGesture()
                                                .onEnded { _ in
                                                }
                                        )
                    })
                    Text("Password")
                        .padding(.leading, 10.0)
                    TextField(" Password", text:self.$password, onEditingChanged: {edit in
                        self.pwdEditing = edit;
                    })
                    .frame(width: g.size.width*85/100, height: 45, alignment: .center)
                    .textFieldStyle(Talk2SiriTextField(focused: self.$pwdEditing))
                    
                    
                    Button(" Sign On ") {
                        print("Action now")
                    }
                    .buttonStyle(Talk2SiriButton())
                    .alignmentGuide(.trailing, computeValue: { dimension in
                        300
                    })
                }
                
            }.frame(width: g.size.width, height: 250, alignment: .center)
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
