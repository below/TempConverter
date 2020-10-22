//
//  ContentView.swift
//  TempConverter
//
//  Created by Alexander v. Below on 22.10.20.
//  Copyright © 2020 Alexander von Below. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var input: String
    let formatter = { () -> NumberFormatter in
        let formattter = NumberFormatter()
        formattter.maximumFractionDigits = 1
        return formattter
    } ()

    var body: some View {
        VStack {
            TextField("Eingabe", text: $input)
                .accessibility(identifier: "Input")
                .padding().multilineTextAlignment(.center)

            Text(localizedConversion(input,
                                     formatter: formatter,
                                     map: fahrenheit))
                .accessibility(identifier: "Output")
                .padding()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(input: "")
    }
}
