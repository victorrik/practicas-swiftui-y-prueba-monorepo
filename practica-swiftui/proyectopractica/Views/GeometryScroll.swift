//
//  GeometryScroll.swift
//  proyectopractica
//
//  Created by Victor Andres Marcial on 24/01/23.
//

import SwiftUI

let arrayOfNames = [
	"0:00 - Introducción",
	"0:57 - Creamos GeometryReader",
	"1:49 - GeometryProxy size",
	"2:36 - GeometryProxy frame (.local y .global)",
	"5:08 - Cambiamos el frame del GeometryReader",
	"5:58 - Ejemplos Prácticos GeometryReader",
	"6:25 - GeometryReader: Custom Layout",
	"8:12 - GeometryReader: ScrollView animación",
	"10:00 - Modificador rotation3DEffect",
]

struct GeometryScroll: View {
    var body: some View {
			ScrollView(showsIndicators: false){
				VStack{
					ForEach(arrayOfNames,id:\.self ){name in
						GeometryReader{ proxy in
							VStack{
								Text("\(proxy.frame(in: .global).minY)")
								Spacer()
								Text("\(name)")
									.frame(width: 370,height: 200)
									.background(Color.pink)
									.cornerRadius(20)
								Spacer()
							}
							.shadow(color: .gray, radius: 10)
							.rotation3DEffect(
								Angle(degrees: Double(proxy.frame(in: .global).minY) - 47),
								axis: (x:0.0,y:10.0,z:0.0)
							)
							
						}
						.frame(width: 370,height: 300)
					}
				}
				
			}
			.padding(.horizontal)
    }
}

struct GeometryScroll_Previews: PreviewProvider {
    static var previews: some View {
        GeometryScroll()
    }
}
