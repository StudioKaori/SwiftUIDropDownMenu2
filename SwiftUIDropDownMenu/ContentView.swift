//
//  ContentView.swift
//  SwiftUIDropDownMenu
//
//  Created by Kaori Persson on 2022-10-13.
//

import SwiftUI

class ViewModel: ObservableObject {
	@Published var focusedFilterId = ""
}

struct ContentView: View {
	
	@ObservedObject var viewModel = ViewModel()
	
    var body: some View {
        ScrollView {
					VStack {
						DropDown(viewModel: viewModel, myViewId: "option1")
						DropDown(viewModel: viewModel, myViewId: "option2")
						DropDown(viewModel: viewModel, myViewId: "option3")
						DropDown(viewModel: viewModel, myViewId: "option4")
						DropDown(viewModel: viewModel, myViewId: "option5")
						
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
