//
//  ContentView.swift
//  SwiftUIDropDownMenu
//
//  Created by Kaori Persson on 2022-10-13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
					DropDown()
					DropDown()
					DropDown()
					DropDown()
					DropDown()
					DropDown()
					DropDown()
					DropDown()
					DropDown()
					DropDown()
				}
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
				
				Image(systemName: expand ? "chevron.up" : "chevron.down")
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
		.frame(width: UIScreen.main.bounds.width)
		.background(LinearGradient(gradient: .init(colors: [.red, .orange]), startPoint: .top, endPoint: .bottom))
		//.cornerRadius(20)
		.animation(.easeOut)
	}
}
