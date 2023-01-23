//
//  TabViewExample.swift
//  proyectopractica
//
//  Created by Victor Andres Marcial on 22/01/23.
//

import SwiftUI

struct TabViewExample: View {
    var body: some View {
			TabView{
				ExtractedView()
					.tabItem{
						Image(systemName: "house.fill")
						Text("Casa")
					}
				Text("Profile")
					.tabItem{
						Image(systemName: "person.crop.circle.fill")
						Text("Profile")
					}
				SubTabView()
					.tabItem{
						Image(systemName: "figure.roll")
						Text("SubTabView")
					}
			}.accentColor(.red)
			
    }
}

struct TabViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TabViewExample()
    }
}

struct ExtractedView: View {
	var body: some View {
		VStack{
			Image(systemName: "house.fill")
				.resizable()
				.scaledToFit()
				.frame(height: 200)
			Text("Estamos en casa")
				.padding()
			
			
		}
	}
}

struct SubTabView: View {
	var body: some View {
		TabView{
			RoundedRectangle(cornerRadius: 20)
				.padding()
				.foregroundColor(.red)
			RoundedRectangle(cornerRadius: 20)
				.padding()
				.foregroundColor(.blue)
			RoundedRectangle(cornerRadius: 20)
				.foregroundColor(.green)
			RoundedRectangle(cornerRadius: 20)
				.foregroundColor(.pink)
				.tabItem{
					Image(systemName: "figure.roll")
					Text("SubTabView")
				}
				.accentColor(.purple)
			
		}
		.frame(height: 200)
		.tabViewStyle(PageTabViewStyle())
	}
}
