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
					VStack {
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
					.frame(width: UIScreen.main.bounds.width)
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
	//@State private var viewSize = CGSize()
	
	var body: some View {
		VStack(alignment: .leading) {
			
			Color.clear
			
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
		.background(LinearGradient(gradient: .init(colors: [.red, .orange]), startPoint: .top, endPoint: .bottom))
		//.cornerRadius(20)
//		.background() {
//			GeometryReader { geometry in
//				Path { path in
//					let size = geometry.size
//					print(size)
//					DispatchQueue.main.async {
//						if self.viewSize != size {
//							self.viewSize = size
//
//						}
//					}
//				}
//			}
//		}
		//.frame(alignment: .leading)
		.animation(.easeInOut)
	}
}
