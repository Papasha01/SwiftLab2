//
//  ContentView.swift
//  Lab02
//
//  Created by user on 17.02.2022.
//  Copyright © 2022 KITMobile. All rights reserved.
//

import SwiftUI

struct ContentView: View {
 var body: some View {
   ZStack {
      Image("myimage")
         .scaleEffect(2.0)
      HStack {
		VStack {
           Text("Item1")
           Text("Item2")
				}
				VStack(spacing: 2){
		   Text("Item3")
					Button(action : {
						print("House!")
					}){
			 Image(systemName: "house")
			.padding(5)
			.background(Color.green)
			.foregroundColor(Color.white)
					
          }
		}
       Button(action : {
           print("Button works!")
            }){
               Text("Click me!")
          }
          VStack(spacing: 4) {
            ForEach(1..<5) { i in
              Text("Text \(i)")
				.bold()
				.frame(width:50)
				.padding(5)
				.border(Color.white, width: 5)
				.cornerRadius(10)
				.background(Color.green)
				.foregroundColor(Color.white)
			}
		}
	}
	}
	}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
