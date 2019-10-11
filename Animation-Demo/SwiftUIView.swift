//
//  SwiftUIView.swift
//  Animation-Demo
//
//  Created by ds-mayur on 10/11/19.
//  Copyright © 2019 Mayur Rathod. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack{
            Button("Press Me"){
                //Perform action when button is clicked
            }
            
            HStack {
                Text("🛬")
                    .font(.custom("Arial", size: 100))
                Spacer()
            }
            
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
