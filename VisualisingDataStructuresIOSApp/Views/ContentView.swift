//
//  ContentView.swift
//  VisualisingDataStructuresIOSApp
//
//  Created by Thomson, Jamie (NA) on 03/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Spacer()
            TabView{
                StackView()
                    .tabItem {
                        Label("Stack", systemImage: "rectangle.stack")
                    }
                QueueView()
                    .tabItem {
                        Label("Queue", systemImage: "textformat.123")
                    }
                LinkedListView()
                    .tabItem {
                        Label("Linked List", systemImage: "list.bullet")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
