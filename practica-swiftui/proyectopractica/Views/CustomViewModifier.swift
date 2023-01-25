//
//  CustomViewModifier.swift
//  proyectopractica
//
//  Created by Victor Andres Marcial on 24/01/23.
//

import SwiftUI
struct NewButtonModified:ViewModifier {
	func body(content:Content) -> some View {
		content
			.font(.body)
			.foregroundColor(.white)
			.padding()
			.background(Color.blue)
			.cornerRadius(20)
	}
}

extension View {
	func newButtonModifier() -> some View {
		self.modifier(NewButtonModified())
	}
}

struct CustomViewModifier: View {
    var body: some View {
			VStack{
				Text("El boton sera modificado")
				Button("Meow meow"){
					
				}
				.newButtonModifier()
			}
    }
}

struct CustomViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        CustomViewModifier()
    }
}
