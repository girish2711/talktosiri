//
//  talk2siriStyles.swift
//  talk2siri
//
//  Created by Girish Adiga on 11/29/20.
//  Copyright © 2020 Girish Adiga. All rights reserved.
//

import Foundation
import SwiftUI

struct Talk2SiriTextField: TextFieldStyle {
    @Binding var focused: Bool
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
        .background(
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .stroke(focused ? Color.red : Color.gray, lineWidth: 2)
        ).padding()
    }
}
