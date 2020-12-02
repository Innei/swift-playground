//
//  ItemRow.swift
//  Demo
//
//  Created by Innei on 2020/12/1.
//

import SwiftUI

struct ItemRow: View {
    var item: MenuItem

    var body: some View {
        NavigationLink(
            destination: DetailView(item: item),
            label: {
                HStack {
                    Image(item.thumbnailImage).clipShape(Circle()).overlay(Circle().stroke(Color.gray, lineWidth: 2).shadow(color: .gray, radius: 2))
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.name)

                            Text("$\(item.price)")
                        }
                    }.padding(.leading)

                    Spacer()
                }
                .padding().foregroundColor(.black)
            })
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
