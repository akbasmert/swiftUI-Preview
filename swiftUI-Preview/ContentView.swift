//
//  ContentView.swift
//  swiftUI-Preview
//
//  Created by Mert AKBAŞ on 12.09.2022.
//

import SwiftUI

struct ContentView: View {
 
    var body: some View {
        List(sehirListesi){ sehir in ListeRow(sehir: sehir)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{// Diğer telefon ekranlarında nasıl görüneceğini görmek için previewDevice() ekledik.
            ContentView().previewDevice("iPhone 12")
            ContentView().previewDevice("iPhone 8")

        }
    }
}
