//
//  DetailVIew.swift
//  Demo
//
//  Created by Innei on 2020/12/1.
//

import SwiftUI

struct DetailView: View {
    var item: MenuItem

    @EnvironmentObject var order: Order

    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                Text("\(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .offset(x: -20, y: -10)
            }

            Text(item.description).padding()

            Spacer()

            Button("Order This") {
                self.order.add(item: self.item)
            }.font(.headline).padding(.bottom)
        }
        .navigationBarTitle(Text(item.name), displayMode: .inline)
        .navigationTitle("Detail")
    }
}

struct DetailVIew_Previews: PreviewProvider {
    static let order = Order()
    static var previews: some View {
        NavigationView {
            DetailView(item: MenuItem.example).environmentObject(order)
        }
    }
}
