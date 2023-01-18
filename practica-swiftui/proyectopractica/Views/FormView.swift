//
//  FormView.swift
//  proyectopractica
//
//  Created by Victor Andres Marcial on 17/01/23.
//

import SwiftUI

struct FormView: View {
	@State var deviceName: String = "iPhone 12 Pro Max"
    var body: some View {
			Form{
				TextField("Decive name", text: $deviceName)
			}
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
