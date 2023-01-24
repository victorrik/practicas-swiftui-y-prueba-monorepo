//
//  MasAcciones.swift
//  proyectopractica
//
//  Created by Victor Andres Marcial on 24/01/23.
//

import SwiftUI

struct Devicee {
	let name: String
	let systemImage: String
}

let arrayOfDevices = [
	Devicee(name: "iphone", systemImage: "iphone"),
	Devicee(name: "ipad", systemImage: "ipad"),
	Devicee(name: "pc", systemImage: "pc"),
	Devicee(name: "4k", systemImage: "4k.tv"),
	Devicee(name: "ipod", systemImage: "ipod"),
	Devicee(name:"laptop", systemImage: "laptopcomputer")
]
struct MasAcciones: View {
	
	
    var body: some View {
			NavigationView{
				List {
					ForEach(arrayOfDevices, id: \.name) { device in
						Label(device.name, systemImage: device.systemImage)
							.swipeActions{
								Button(action: {
									print("meow")
								}, label: {
									Label("Favorito", systemImage: "star.fill")
								})
								.tint(.yellow)
								
								Button(action: {
									print("meow")
								}, label: {
									Label("Otro", systemImage: "scribble.variable")
								})
								.tint(.pink)
							}
							.swipeActions(edge: .leading, content: {
								Button(action: {
									print("Eliminad")
								}, label: {
									Label("Trasheable", systemImage:"trash.fill")
									
								}
								)
								.tint(.purple)
							})
					}
					
				}
				.refreshable {
					print("refresca perra")
				}
			}
    }
}

struct MasAcciones_Previews: PreviewProvider {
    static var previews: some View {
        MasAcciones()
    }
}
