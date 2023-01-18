//
//  ColorPickers.swift
//  proyectopractica
//
//  Created by Victor Andres Marcial on 17/01/23.
//

import SwiftUI

struct MasEjemplos: View {
	@State var currentColor : Color = .blue
	@State var isLoading : Bool = false
	@State var isOn : Bool = false
	@State var stepperCounter : Int = 1
	@State var slideCounter : Float = 0.0
	@State var isEditingSlider : Bool = false
	@State var progress : Float = 0.0
    var body: some View {
			ScrollView{
				VStack{
					ColorPicker("Selecciona un color",
											selection: $currentColor)
					.bold()
					.font(.title)
					Rectangle()
						.foregroundColor(currentColor)
						.frame(width: 200,height: 60)
					if isLoading {
						ProgressView("Estamos cargando")
							.scaleEffect(2)
						
					}
					Button("Carga"){
						isLoading = !isLoading
					}.padding(.top,20)
					
					ProgressView(value: progress)
							
					
					Button("Carga"){
						progress += 0.1
					}
					VStack{
						Rectangle()
							.foregroundColor(.red)
							.frame(height: 5)
						Text("Ejemplos de link")
						Link(destination: URL(string: "https://victorrik.com")!, label: {
							Text("Link a victorrik")
						})
						Link(destination: URL(string: UIApplication.openSettingsURLString)!, label: {
							Label("Settings",systemImage: "gear")
								.font(.headline)
								.foregroundColor(.white)
								.padding()
								.background(Color.black)
								.cornerRadius(10)
								
						})
						Rectangle()
							.foregroundColor(.red)
							.frame(height: 5)
						Text("El toggle")
						Toggle("Puedes moverlo",isOn: $isOn)
						VStack{
							Text("Stepper")
							Stepper("iPhone \(stepperCounter)", value: $stepperCounter,
											in: 1...5
											,step: 2)
							
							Stepper("iPhone Var", onIncrement: {
								stepperCounter += 2
								print("On incremen")
							}, onDecrement: {
								stepperCounter -= 1
								print("On onDecrement")
							})

						}
						VStack{
							Text("Slider")
							Slider(value: $slideCounter,
										 in: 0...10,
										 step: 0.1,
										 onEditingChanged: {
												editing in isEditingSlider = editing
										 },
										 minimumValueLabel: Text("min"),
										 maximumValueLabel: Text("max")){
								Text("Selecciona un numero")
							}
							Text("Contaodr Slider \(slideCounter)")

						}
						
						
					}
				}.padding()
				
			}
    }
}

struct MasEjemplos_Previews: PreviewProvider {
    static var previews: some View {
			MasEjemplos()
    }
}
