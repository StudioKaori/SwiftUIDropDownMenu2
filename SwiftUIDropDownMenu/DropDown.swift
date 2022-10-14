//
//  DropDown.swift
//  SwiftUIDropDownMenu
//
//  Created by Kaori Persson on 2022-10-13.
//

import SwiftUI

struct DropDown: View {
	
	@ObservedObject var viewModel: ViewModel
	let myViewId: String
	//@State private var viewSize = CGSize()
	
	var body: some View {
		VStack(alignment: .leading) {
			
			// To make the width full, add color.clear
			Color.clear
				.frame(height: 0)
			
			HStack {
				Text("Expand")
					.fontWeight(.light)
				
				Image(systemName: viewModel.focusedFilterId == self.myViewId ? "chevron.up" : "chevron.down")
					.resizable()
					.frame(width: 10, height: 10)
			}
			.onTapGesture {
				
				if viewModel.focusedFilterId == self.myViewId {
					print("if 01 \(viewModel.focusedFilterId)")
					viewModel.focusedFilterId = ""
				} else if viewModel.focusedFilterId != self.myViewId {
					print("if else 02 \(viewModel.focusedFilterId)")
					viewModel.focusedFilterId = self.myViewId
				}
				
			}
			
			if viewModel.focusedFilterId == self.myViewId {
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


struct DropDown_Previews: PreviewProvider {
    static var previews: some View {
			DropDown(viewModel: ViewModel(), myViewId: "option1")
    }
}
