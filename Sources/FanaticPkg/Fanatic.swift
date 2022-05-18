//
//  Fanatic.swift
//  Fanatic
//
//  Created by Erio Daniel Díaz on 18/05/2022.
//

import SwiftUI

public struct Fanatic: View {
    var name: String = "Somebody"
    var brand: Brand = .apple
    
    public init(name: String = "Somebody", brand: Brand = .apple) {
        self.name = name
        self.brand = brand
    }
    
    public var body: some View {
        VStack {
            Text("\(name)")
                .font(
                    .system(size: 30)
                    .weight(.medium)
                )
            HStack(alignment: .center) {
                Text("I")
                    .font(
                        .system(size: 100)
                        .weight(.bold)
                    )
                Image("heart", bundle: .module)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 100)
                Image(brand.rawValue, bundle: .module)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 100)
            }
        }
    }
}

public enum Brand: String {
    case mercedez = "mercedez"
    case apple = "apple"
    case sony = "sony"
    case netflix = "netflix"
}
