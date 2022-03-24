//
//  QueueView.swift
//  VisualisingDataStructuresIOSApp
//
//  Created by Thomson, Jamie (NA) on 03/03/2022.
//

import SwiftUI

struct QueueView: View {
    @StateObject var q = Queue()
    @State var showPeekText : Bool = false
    var body: some View {
            NavigationView {
                VStack{
                    Text("This is your queue:")
                    List {
                        ForEach(q.items, id : \.self) { number in
                            Text("\(number)")
                        }
                        .navigationBarItems(
                            leading:
                                Button("Delete", action: {
                                q.pop()
                                }),
                            trailing:
                                Button("Add", action: {
                                q.push()
                                })
                        )

                    }
                
                    Button("Peek", action: {
                        showPeekText = true
                    }).padding()
                    if showPeekText == true {
                        Text(q.peek())
                    }
                }
            }
    }
}

struct QueueView_Previews: PreviewProvider {
    static var previews: some View {
        QueueView()
    }
}
