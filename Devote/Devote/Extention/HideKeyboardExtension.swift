//
//  HideKeyboardExtension.swift
//  Devote
//
//  Created by Supapon Pucknavin on 8/10/2565 BE.
//

import Foundation
import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
