//
//  CombinedAnimation.swift
//  Animation-Demo
//
//  Created by ds-mayur on 10/6/19.
//  Copyright © 2019 Mayur Rathod. All rights reserved.
//

import SwiftUI

struct CombinedAnimation: View {
    
    @State private var showDetail : Bool = false
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text("👶🏻")
                .font(.custom("Arial", size: 100.0))
                .padding()
                .scaleEffect(self.showDetail ? 2 : 1)
                .rotationEffect(.degrees(self.showDetail ? 360 : 0))
                .animation(.interpolatingSpring(mass: 1.0,
                                                stiffness: 100,
                                                damping: 10,
                                                initialVelocity: 0))
            
            Spacer()
            
            Button("Press Me"){
                self.showDetail.toggle()
            }.padding()
                .font(.title)
                .foregroundColor(Color.white)
                .frame(width: UIScreen.main.bounds.width - 100, height: 80)
                .background(Color.purple)
                .cornerRadius(20.0)
        }
    }
}

struct CombinedAnimation_Previews: PreviewProvider {
    static var previews: some View {
        CombinedAnimation()
    }
}
