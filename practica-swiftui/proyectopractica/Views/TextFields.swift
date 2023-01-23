//
//  TextFields.swift
//  proyectopractica
//
//  Created by Victor Andres Marcial on 17/01/23.
//

import SwiftUI

struct TextFields: View {
	@State var username : String = ""
	@State var password : String = ""
	@State var textEditorText : String = "Escribe algo aqui uwu"
	@State var textCounter = 0
	@State var showPassword : Bool = false
    var body: some View {
			VStack(spacing: 10){
				TextField("Username", text: $username)
					.keyboardType(.emailAddress)
					.disableAutocorrection(true)
					.padding(10)
					.font(Font.headline.weight(.bold))
					.background(Color.gray.opacity(0.3))
					.cornerRadius(6)
					.padding(.horizontal,60)
					.padding(.top,20)
					.onChange(of: username, perform: {
						value in print("Nuevo valor \(value)")
					})
				
				if showPassword{
					TextField("Password", text: $password)
						.keyboardType(.default)
						.disableAutocorrection(true)
						.autocapitalization(.none)
						.padding(10)
						.font(Font.headline.weight(.bold))
						.background(Color.gray.opacity(0.3))
						.cornerRadius(6)
						.padding(.horizontal,60)
						.onChange(of: password, perform: {
							value in print("Password valor \(value)")
						})
				}else{
					SecureField("Password", text: $password)
						.keyboardType(.default)
						.disableAutocorrection(true)
						.autocapitalization(.none)
						.padding(10)
						.font(.headline)
						.background(Color.gray.opacity(0.3))
						.cornerRadius(6)
						.padding(.horizontal,60)
						.onChange(of: password, perform: {
							value in print("Password valor \(value)")
						})

				}
				Button("Mostrar contraseña",action: {
					showPassword = !showPassword
				})
				.foregroundColor(.white)
				.font(Font.headline.weight(.bold))
				.padding()
				.background(Color.red)
				.cornerRadius(10)
				
				TextEditor(text: $textEditorText)
					.font(.title)
					.autocapitalization(.none)
					.disableAutocorrection(true)
					.foregroundColor(.blue)
					.padding()
					.onChange(of: textEditorText, perform: {value in
						textCounter = value.count
					 })
				Text("\(textCounter)")
					.foregroundColor(textCounter <= 100 ? .green : .red)
					.font(.largeTitle)
			}
    }
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFields()
    }
}
