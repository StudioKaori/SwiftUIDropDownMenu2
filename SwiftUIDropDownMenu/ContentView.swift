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
