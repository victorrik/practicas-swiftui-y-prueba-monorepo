//
//  Geometrys.swift
//  proyectopractica
//
//  Created by Victor Andres Marcial on 24/01/23.
//

import SwiftUI

struct Geometrys: View {
    var body: some View {
				VStack{
					GeometryReader{ proxy in
						VStack(spacing: 0){
							HStack(spacing: 0){
								Rectangle()
									.foregroundColor(.blue)
									.overlay(Text("1"))
									.frame(width: proxy.size.width / 2,height: proxy.size.height / 2)
									
								Rectangle()
									.foregroundColor(.yellow)
									.overlay(Text("2"))
									.frame(width: proxy.size.width / 2,height: proxy.size.height / 2)
									
							}
							Rectangle()
								.foregroundColor(.purple)
								.overlay(Text("3"))
								.frame(width: proxy.size.width,height: proxy.size.height * 0.33)
								
						}
						
					}
					.background(Color.green)
				}
				
//				GeometryReader{ proxy in
//					VStack{
//						Text("Width: \(proxy.size.width)")
//							.background(Color.white)
//							.padding()
//						Text("height: \(proxy.size.height)")
//							.background(Color.white)
//							.padding()
//
//						Text("Coordinates Local: \(proxy.frame(in: .local).debugDescription)")
//							.background(Color.white)
//								.padding()
//						Text("Coordinates Globla: \(proxy.frame(in: .global).debugDescription)")
//							.background(Color.white)
//								.padding()
//					}
//
//				}
//				.background(Color.red)
//				.frame(width: 300,height: 300)
    }
}

struct Geometrys_Previews: PreviewProvider {
    static var previews: some View {
        Geometrys()
    }
}
