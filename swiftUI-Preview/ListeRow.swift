//
//  ListeRow.swift
//  swiftUI-Preview
//
//  Created by Mert AKBAŞ on 12.09.2022.
//

import SwiftUI

struct ListeRow: View {
    var sehir : Sehir
    var body: some View {
        HStack{
            Image(sehir.gorselIsim).resizable().frame(width: 90, height: 90, alignment: .leading)
            Spacer()
            VStack{
                Text(sehir.isim).font(.title).foregroundColor(.blue)
                Text(sehir.bolge).font(.title2).foregroundColor(.orange)
            }
            Spacer()
        }.padding()
    }
}

struct ListeRow_Previews: PreviewProvider {
    static var previews: some View {
       
        Group{//Group yaparak diğer illeride ekledik. bu test amaçlı kullanılır ilerin listede nasıl gözükeceğini görmek için
            ListeRow(sehir: ankara).previewLayout(.sizeThatFits).environment(\.sizeCategory, .extraExtraExtraLarge)// .enviroment diyerek kullanıcılara göre yazı ekran boyutu vb değiştirdik.
            ListeRow(sehir: izmir).previewLayout(.sizeThatFits).environment(\.sizeCategory, .medium) //previewLayoat diyerek liste boyutunda gösterdik.
            ListeRow(sehir: istanbul).previewLayout(.sizeThatFits).environment(\.sizeCategory, .extraSmall) //previewLayoat diyerek liste boyutunda gösterdik.
            
        }
    }
}
