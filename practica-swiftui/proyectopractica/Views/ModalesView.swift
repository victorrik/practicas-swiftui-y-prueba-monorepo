//
//  ModalesView.swift
//  proyectopractica
//
//  Created by Victor Andres Marcial on 22/01/23.
//

import SwiftUI

struct ModalesView: View {
	
	@State var isPresentedFull: Bool = false
	@State var isPresentedSheet: Bool = false
	
	var body: some View {
		VStack{
			Text("Vista 1")
				.padding()
			Button("Pantalla llena modal"){
				isPresentedFull = true
			}
			Button("Pantalla llena sheet"){
				isPresentedSheet = true
			}
			.padding()
		}
		.fullScreenCover(isPresented: $isPresentedFull,
										 onDismiss: {
			isPresentedFull = false
		},
										 content: {
			ZStack{
				Color.pink.ignoresSafeArea()
				Button("Bienvenidos perros"){
					isPresentedFull = false
				}
			}
			
		})
		.sheet(isPresented: $isPresentedSheet,
										 onDismiss: {
			isPresentedSheet = false
		},
										 content: {
			ZStack{
				Color.red.ignoresSafeArea()
				Button("Bienvenidos perros"){
					isPresentedSheet = false
				}
			}
			
		})
	}
}

struct ModalesView_Previews: PreviewProvider {
	static var previews: some View {
		ModalesView()
	}
}
