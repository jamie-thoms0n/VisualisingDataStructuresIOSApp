//
//  Queue.swift
//  VisualisingDataStructuresIOSApp
//
//  Created by Thomson, Jamie (NA) on 24/03/2022.
//

import Foundation

class Queue : ObservableObject {
    
    @Published var items : [Int]
    var pointer : Int
    
    init() {
        self.items = [1,2,3,4,5]
        self.pointer = 4
    }
    

    

    func peek() -> String {
        let count = items.count - 1
        if items.count == 0 {
          return("Stack is empty")
        }
        else{
            return("\(items[count]) is at the top of the stack")
        }
    }

    func push() -> [Int] {
        let input = Int.random(in: 0..<300)
        if pointer == 0 {
            items.append(input)
            pointer += 1
        }
        if pointer != 0 {
            items.append(input)
            pointer += 1
            }
      return(items)
    }



    func pop() -> [Int]{
        if items == [] {
            return []
        }
        else {
            items.remove(at: 0)
            pointer -= 1
            return items
        }
    }
}
