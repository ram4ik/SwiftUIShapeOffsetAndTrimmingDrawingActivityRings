//
//  ContentView.swift
//  SwiftUIShapeOffsetAndTrimmingDrawingActivityRings
//
//  Created by ramil on 21/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Today, 9 July 2019")
                .font(.largeTitle)
                .padding()
            
            Divider()
            
            ZStack {
                
                Circle()
                    .trim(from: 0.5, to: 1.0)
                    .stroke(Color.pink, lineWidth: 30)
                    .frame(width: 300, height: 300)
                    .rotationEffect(.degrees(90))
                
                Circle()
                    .trim(from: 0.75, to: 1.0)
                    .stroke(Color.green, lineWidth: 30)
                    .frame(width: 238, height: 238)
                    
                Circle()
                    .trim(from: 0.25, to: 1.0)
                    .stroke(Color.blue, lineWidth: 30)
                    .frame(width: 176, height: 176)
                    .rotationEffect(.degrees(-180))
                    
            }.offset(x: -30, y: 30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
