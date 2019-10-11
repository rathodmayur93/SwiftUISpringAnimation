//
//  ContentView.swift
//  Animation-Demo
//
//  Created by ds-mayur on 10/6/19.
//  Copyright © 2019 Mayur Rathod. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showDetail : Bool = false
    
    var body: some View {
        VStack {
            
            Button("Press Me"){
                self.showDetail.toggle()
            }
            
            
            HStack{
                Text(self.showDetail ? "Hide Details" : "Show Details")
                
                //Image(systemName: self.showDetail ? "chevron.up.square" : "chevron.down.square")
                
                //Animate the image
                Image(systemName: "chevron.up.square")
                    .rotationEffect(.degrees(self.showDetail ? 0 : 180))
                    .animation(.default)
            }
            
            /*
                if showDetail{
                    HStack {
                        Text("Hide Details")
                        Image(systemName: "chevron.up.square")
                    }
                    
                }else{
                    HStack{
                        Text("Show Details")
                        Image(systemName: "chevron.down.square")
                    }
                }
            */
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
