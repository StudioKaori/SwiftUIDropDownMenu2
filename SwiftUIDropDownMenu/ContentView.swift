//
//  ContentView.swift
//  SwiftUIDropDownMenu
//
//  Created by Kaori Persson on 2022-10-13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
					DropDown()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DropDown: View {
	
	@State var expand = false
	
	var body: some View {
		VStack {
			HStack {
				Text("Expand")
					.fontWeight(.light)
				
				Image(systemName: "chevron.down")
					.resizable()
					.frame(width: 10, height: 10)
			}
			.onTapGesture {
				self.expand.toggle()
			}
			
			if expand {
				Button(action: {
					
				}, label: {
					Text("Select 1")
						.padding()
				})
				.foregroundColor(.black)
				
				Button(action: {
					
				}, label: {
					Text("Select 2")
						.padding()
				})
				.foregroundColor(.black)
				
				Button(action: {
					
				}, label: {
					Text("Select 3")
						.padding()
				})
				.foregroundColor(.black)
			}
		}
		.padding()
		.background(LinearGradient(gradient: .init(colors: [.red, .orange]), startPoint: .top, endPoint: .bottom))
		.cornerRadius(20)
		.animation(.spring())
	}
}
