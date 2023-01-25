//
//  keysPreferences.swift
//  proyectopractica
//
//  Created by Victor Andres Marcial on 24/01/23.
//

import SwiftUI

struct CustomTitleKey: PreferenceKey {
	static var defaultValue: String = ""
	
	static func reduce(value:inout String, nextValue:() -> String) {
		if !value.isEmpty{
			return
		}
		value = nextValue()
	}
	
}

struct CustomNavigationView<Content: View>:View {
	@State private var title: String = "Navigation View"
	let content:Content
	init(@ViewBuilder content:()-> Content){
		self.content = content()
	}
			
	var body: some View {
		VStack(alignment: .leading){
			  Text(title)
				.font(.largeTitle)
				.bold()
				GeometryReader{ proxy in
					ScrollView{
						content
					}
				}
		 }
		.padding()
		.onPreferenceChange(CustomTitleKey.self){ value in
			print("Value \(value)")
			title = value
		}
	}
	
}

struct keysPreferences: View {
    var body: some View {
			CustomNavigationView{
				VStack{
					Text("Soy un hijo 1")
						.padding()
						.customNavigationTitle(title: "Primera")

					Text("Soy un hijo 2")
						.padding()
						.customNavigationTitle(title: "Segunda")
				}
			}
    }
}

extension View {
	func customNavigationTitle(title:String) -> some View {
		modifier(CustomNavigationTitle(title: title))
	}
}

struct CustomNavigationTitle:ViewModifier {
	private var title:String
	
	init(title: String) {
		self.title = title
	}
	
	func body(content: Content) -> some View {
		content
			.preference(key: CustomTitleKey.self, value: title)
	}
}

struct keysPreferences_Previews: PreviewProvider {
    static var previews: some View {
        keysPreferences()
    }
}



