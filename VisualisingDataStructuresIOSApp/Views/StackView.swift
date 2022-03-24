//
//  StackView.swift
//  VisualisingDataStructuresIOSApp
//
//  Created by Thomson, Jamie (NA) on 03/03/2022.
//

import SwiftUI

struct StackView: View {
    @StateObject var stack = Stack()
    @State var showPeekText : Bool = false
    var body: some View {
            NavigationView {
                Spacer()
                VStack{
                    Text("This is your stack:")
                    List {
                        ForEach(stack.items.reversed(), id : \.self) { number in
                            Text("\(number)")
                        }
                        .navigationBarItems(
                            leading:
                                Button("Delete", action: {
                                stack.pop()
                                }),
                            trailing:
                                Button("Add", action: {
                                stack.push()
                                })
                        )

                    }
                
                    Button("Peek", action: {
                        showPeekText = true
                    }).padding()
                    if showPeekText == true {
                        Text(stack.peek())
                    }
                }
            }
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
