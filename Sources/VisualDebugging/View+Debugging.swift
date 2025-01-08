//
//  View+Debugging.swift
//  SkyMark Shared Views
//
//  Created by Joseph Wardell on 1/3/25.
//

import SwiftUI

#if DEBUG
public extension View {
    
    /// When you are trying to figure out SwiftUI layout,
    /// sometimes it helps to have some simple visual debugging.
    /// This modifier will draw a colroed border around the view it modifies.
    /// - Parameter color: a SwiftUI color, pass in nil to get a randomly-generated color
    /// - Parameter lineWidth: the width of the border, 1 by default
    ///
    ///  NOTE: This method only compiles in DEBUG mode,
    ///  so if you are calling it in release code, it will give an error
    func debuggingBorder(color: Color? = nil, lineWidth: CGFloat? = nil) -> some View {
        let color = color ?? Color(
            red: CGFloat.random(in: 0.2 ... 0.9),
            green: CGFloat.random(in: 0.2 ... 0.9),
            blue: CGFloat.random(in: 0.2 ... 0.9)
        )
        return self
            .border(color, width: lineWidth ?? 1)
    }
    
    /// When you are trying to figure out SwiftUI layout,
    /// sometimes it helps to have some simple visual debugging.
    /// This modifier will draw a colored background behind the view it modifies.
    /// - Parameter color: a SwiftUI color, pass in nil to get a randomly-generated color
    ///
    ///  NOTE: This method only compiles in DEBUG mode,
    ///  so if you are calling it in release code, it will give an error
    func debuggingBackground(color: Color? = nil) -> some View {
        let color = color ?? Color(
            red: CGFloat.random(in: 0.2 ... 0.9),
            green: CGFloat.random(in: 0.2 ... 0.9),
            blue: CGFloat.random(in: 0.2 ... 0.9)
        )
        return self
            .background(color)
    }
}


#Preview {
    VStack(alignment: .leading, spacing: 20) {
        Text("debuggingBorder")
            .debuggingBorder()

        Text("debuggingBorder with given color")
            .debuggingBorder(color: .yellow)

        Text("debuggingBorder with thick border")
            .debuggingBorder(lineWidth: 10)

        Text("debuggingBackground")
            .debuggingBackground()

        Text("debuggingBackground with given color")
            .debuggingBackground(color: .yellow)
    }
    .font(.largeTitle)
    .padding()
}

#endif
