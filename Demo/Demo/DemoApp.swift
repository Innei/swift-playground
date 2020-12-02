//
//  DemoApp.swift
//  Demo
//
//  Created by Innei on 2020/12/1.
//

import SwiftUI

@main
struct DemoApp: App {
    var order = Order()

    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("Menu")
                    }

                OrderView()
                    .tabItem {
                        Image(systemName: "square.and.pencil")
                        Text("Order")
                    }
            }.environmentObject(order).animation(.easeIn).transition(.slide)
        }
    }
}
