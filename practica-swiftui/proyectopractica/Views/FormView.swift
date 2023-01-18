//
//  FormView.swift
//  proyectopractica
//
//  Created by Victor Andres Marcial on 17/01/23.
//

import SwiftUI

struct FormView: View {
	@State var deviceName: String = "iPhone 12 Pro Max"
	@State var isOnNetwork: Bool = true
	@State var date: Date = Date()
	@State var color: Color = .blue
    var body: some View {
			Form{
				Section(
					content: {
						TextField("Decive name", text: $deviceName)
						Toggle("Wi-fi", isOn: $isOnNetwork )
					}, header: {
						
						Label("Settings",systemImage: "gear")
							.font(.headline)
					}
				)
				Section(
					content: {
						DatePicker("Date", selection: $date)
						ColorPicker("Color", selection: $color)
					}, header: {
						Label("Account",systemImage: "iphone")
					},
					footer: {
						HStack{
							Spacer()
							Label("Version 1.meow",systemImage: "iphone")
								.font(.headline)
							Spacer()
						}
					}
				)
			}.foregroundColor(color)
    }
		
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
