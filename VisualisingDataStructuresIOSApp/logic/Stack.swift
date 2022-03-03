//
//  Stack.swift
//  VisualisingDataStructuresIOSApp
//
//  Created by Thomson, Jamie (NA) on 03/03/2022.
//

import Foundation

class Stack {


    func peek(items : [Int], pointer : Int) -> String {
        if items.count == 0 {
          return("Empty")
        }
        else{
          return("Top of stack \(items[-1])")
        }
    }

    func push(items : [Int], pointer : Int) {
      var input = input
        if pointer == 0{
        items.append(input)
        pointer += 1
    }
    if pointer != 0{
        items[pointer + 1].append(input)
        pointer += 1
        }
      return(items)
    }



//    func pop(items : [Int], pointer : Int){
//      if stack == []:
//        print("null")
//      else:
//        stack.pop(pointer)
//        pointer -= 1
//      print(stack)
//    }
//
//    this = True
//
//    while this == True:
//      print('''1 - view stack\n2 - push onto stack\n3 - remove from stack\n4 - quit''')
//      menuChoice = input('Enter the menu choice: ')
//      if menuChoice == '1':
//        peek(stack,pointer)
//      elif menuChoice == '2':
//        push(stack,pointer)
//      elif menuChoice == '3':
//        pop(stack,pointer)
//      else:
//        this = False

}
