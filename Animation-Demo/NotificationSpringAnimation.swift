//
//  NotificationSpringAnimation.swift
//  Animation-Demo
//
//  Created by ds-mayur on 10/6/19.
//  Copyright © 2019 Mayur Rathod. All rights reserved.
//

import SwiftUI

struct NotificationSpringAnimation: View {
    
    @State private var isNotificationShown : Bool = false
    
    var body: some View {
        
        VStack{
            
            NotificationView()
                .offset(y: isNotificationShown ? -UIScreen.main.bounds.height/3 : -UIScreen.main.bounds.height)
                .animation(.interpolatingSpring(mass: 1.0,
                                                stiffness: 100,
                                                damping: 10,
                                                initialVelocity: 0))
            
            Button("Press me"){
                self.isNotificationShown.toggle()
            }
        }
    }
}

struct NotificationSpringAnimation_Previews: PreviewProvider {
    static var previews: some View {
        NotificationSpringAnimation()
    }
}

struct NotificationView: View {
    
    var body: some View {
        
        Text("Success")
            .font(.title)
            .padding(24)
            .foregroundColor(Color.white)
            .frame(width: UIScreen.main.bounds.width - 10, height: 70)
            .background(Color.red)
            .cornerRadius(10.0)
            
    }
}
