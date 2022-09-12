//
//  Sehirler.swift
//  swiftUI-Preview
//
//  Created by Mert AKBAŞ on 12.09.2022.
//

import Foundation
import SwiftUI

struct Sehir : Identifiable{
    
    var id = UUID()
    var isim : String
    var gorselIsim : String
    var bolge : String
    
}

let ankara = Sehir(isim: "isim: Ankara", gorselIsim: "ankara", bolge: "bölge: içanadolu")
let istanbul = Sehir(isim: "isim: istanbul", gorselIsim: "isatanbul", bolge: "bölge: marmara")
let izmir = Sehir(isim: "isim: İzmir", gorselIsim: "izmir", bolge: "bölge: ege")
let sehirListesi = [ankara, istanbul, izmir]
