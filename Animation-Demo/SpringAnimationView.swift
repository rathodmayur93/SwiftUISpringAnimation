//
//  SpringAnimationView.swift
//  Animation-Demo
//
//  Created by ds-mayur on 10/6/19.
//  Copyright © 2019 Mayur Rathod. All rights reserved.
//

import SwiftUI

struct SpringAnimationView: View {
    
    @State private var playAnimation : Bool = false
    
    var body: some View {
        VStack {
            Button("Press Me"){
                self.playAnimation.toggle()
            }
            
            HStack{
                Text("🛬")
                    .font(.custom("Arial", size: 100))
                    .offset(x: self.playAnimation ? UIScreen.main.bounds.width - 120 : 0)
                    .animation(.interpolatingSpring(mass: 1.0,
                                                    stiffness: 100.0,
                                                    damping: 10,
                                                    initialVelocity: 0))
                Spacer()
            }
        }
    }
}

struct SpringAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        SpringAnimationView()
    }
}
