//
//  View+Previews.swift
//  Chatham
//
//  Created by Joseph Wardell on 3/31/23.
//

import SwiftUI

public extension View {
    
    /// This modifier will condense the wisth of the view it modifies
    /// to a reasonable size.
    ///
    /// It's only meant to be used in a Preview
    /// In production code, it does nothing
    func reasonablySizedPreview() -> some View {
        self
            #if DEBUG
            .frame(maxWidth: 300)
            .previewLayout(.sizeThatFits)
            #endif
    }
    
    /// This modifier will condense the wisth of the view it modifies
    /// to a fairly large size.
    ///
    /// It's only meant to be used in a Preview
    /// In production code, it does nothing
    func widerPreview() -> some View {
        self
            #if DEBUG
            .frame(maxWidth: 500)
            .previewLayout(.sizeThatFits)
            #endif
    }
    
    /// This modifier will condense the wisth of the view it modifies
    /// to a fairly small size.
    ///
    /// It's only meant to be used in a Preview
    /// In production code, it does nothing
    func narrowerPreview() -> some View {
        self
            #if DEBUG
            .frame(maxWidth: 100)
            .previewLayout(.sizeThatFits)
            #endif
   }

}

#if DEBUG
#Preview("reasonably sized preview") {
    Color.orange
        .reasonablySizedPreview()
}

#Preview("reasonably sized preview") {
    Color.orange
        .narrowerPreview()
}
#endif
