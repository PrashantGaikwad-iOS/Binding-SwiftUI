//
//  AnyViewExample.swift
//  Binding
//
//  Created by Saif on 15/11/19.
//  Copyright © 2019 LeftRightMind. All rights reserved.
//

import SwiftUI

struct AnyViewExample: View {
    @Environment(\.horizontalSizeClass) var sizeClass
    
    var body: some View {
        if sizeClass == .compact {
            return AnyView(VStack {
                Text("Active size class:")
                Text("COMPACT")
            }
            .font(.largeTitle))
        }
        else {
            return AnyView(HStack {
                Text("Active size class:")
                Text("REGULAR")
            }
            .font(.largeTitle))
        }
    }
}

struct AnyViewExample_Previews: PreviewProvider {
    static var previews: some View {
        AnyViewExample()
    }
}
