//
//  MiniExtras.swift
//  proyectopractica
//
//  Created by Victor Andres Marcial on 16/01/23.
//

import SwiftUI

struct MiniExtras: View {
    var body: some View {
			VStack(spacing:10){
				Text("Texto largo de ejmplo para mas modificaciones Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce mattis massa tortor, id auctor mi imperdiet in.")
					.font(.largeTitle)
					.underline()
					.rotation3DEffect(.degrees(20), axis: (x: 2, y: 0, z: 0)	)
					.shadow(color:.gray,radius: 2,x:0,y:7)
					.lineLimit(5)
					.lineSpacing(10)
					.padding(10)
					.foregroundColor(.yellow)
				Rectangle()
					.frame(height: 2.0).foregroundColor(.red)
				 Text("Este es un texto concatenado ")
				+ Text("Este es un texto concatenado")
					.foregroundColor(.red)
				+ Text("Este es un texto concatenado")
					.foregroundColor(.blue)
					.bold()
				Rectangle()
					.frame(height: 2.0).foregroundColor(.red)
		 
				VStack(spacing: 10){
					Text(Date(),style: .date)
					Text(Date(),style: .timer)
					Text(Date().addingTimeInterval(3600),style: .timer)
					Text(Date(),style: .time)
				}
				Rectangle()
					.frame(height: 2.0).foregroundColor(.red)
				VStack(spacing: 10){
					Button(action: {
						print("se suscribe")
					}, label: {
						Text("Suscripcion".uppercased())
							.foregroundColor(.white)
							.bold()
							.padding()
							.background(Color.red)
							.cornerRadius(10)
							.shadow(radius: 5)
					})
					Button(action: {
						print("Le da like")
					}, label: {
						Circle()
							.fill(Color.blue)
							.frame(width: 100,height: 100)
							.shadow(radius: 10)
							.overlay(
								Image(systemName: "hand.thumbsup.fill")
									.foregroundColor(.white)
									.font(.system(size: 50,weight: .bold))
							)
					})
					.background(Color.black)
					.cornerRadius(100)
					
				}
			Rectangle()
				.frame(height: 2.0).foregroundColor(.red)
				//Label es cuando queremos iconos y textos al mismo tiempo
				Label("Titulo del bale", systemImage: "hand.thumbsup.fill")
					.font(.largeTitle)
					/**
					 Esta prop es para que se oculte en espacios pequeños
					 .labelStyle(IconOnlyLabelStyle())
					 */
			}
    }
}

struct MiniExtras_Previews: PreviewProvider {
    static var previews: some View {
        MiniExtras()
    }
}
