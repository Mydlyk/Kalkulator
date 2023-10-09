//
//  ContentView.swift
//  Kalkulator
//
//  Created by Damian on 09/10/2023.
//

import SwiftUI


struct ContentView: View {
    
        func calculate(first: Int, second: Int, operation :String) -> Double{
            
            switch operation {
            case "+":
                return add(first:Double(first), second: Double(second))

            case "-":
                return sub(first:Double(first), second: Double(second))

            case "*":
                return multiply(first:Double(first), second: Double(second))
            case "/":
               return div(first: Double(first), second: Double(second))

            case "sin":
                return sinus(first: Double(first))
            
                
            default:
                print("secret code")
            }
            
            return 10.2
            
        
        
    }
    func add(first: Double, second: Double)-> Double {return first + second}
    func sub(first: Double, second: Double)-> Double {return first - second}
    func multiply(first: Double, second: Double) -> Double {return first*second}
    func div(first: Double, second: Double) -> Double {
        
        return first/second
    }
    func sinus(first: Double) -> Double {return sin(first)}
    

    @State var value = ""
    @State var first = ""
    @State var second = ""
    @State var operation = ""
    @State var huj = 10.0
    var body: some View {
        VStack {
            Text("KALKULATOR")
                .font(.title)
                .padding(100)
            
            Button(action:{value = ""}, label:{
                Text(value)
                    .frame(width:315,height:60)
                    .border(Color.black,width:2)
                    .font(.title)
            })
            
            HStack{
                Button(action:{value = value + "1"}, label:{
                    Text("1")
                        .frame(width:100,height:60)
                        .border(Color.black,width:2)
                        .font(.title)
                })
                Button(action:{value = value + "2"}, label:{
                    Text("2")
                        .frame(width:100,height:60)
                        .border(Color.black,width:2)
                        .font(.title)
                })
                Button(action:{value = value + "3"}, label:{
                    Text("3")
                        .frame(width:100,height:60)
                        .border(Color.black,width:2)
                        .font(.title)
                })
                
            }
            HStack{
                Button(action:{value = value + "4"}, label:{
                    Text("4")
                        .frame(width:100,height:60)
                        .border(Color.black,width:2)
                        .font(.title)
                })
                Button(action:{value = value + "5"}, label:{
                    Text("5")
                        .frame(width:100,height:60)
                        .border(Color.black,width:2)
                        .font(.title)
                })
                Button(action:{value = value + "6"}, label:{
                    Text("6")
                        .frame(width:100,height:60)
                        .border(Color.black,width:2)
                        .font(.title)
                })
                
            }
            HStack{
                Button(action:{value = value + "7"}, label:{
                    Text("7")
                        .frame(width:100,height:60)
                        .border(Color.black,width:2)
                        .font(.title)
                })
                Button(action:{value = value + "8"}, label:{
                    Text("8")
                        .frame(width:100,height:60)
                        .border(Color.black,width:2)
                        .font(.title)
                })
                Button(action:{value = value + "9"}, label:{
                    Text("9")
                        .frame(width:100,height:60)
                        .border(Color.black,width:2)
                        .font(.title)
                })
                
            }
            HStack{
                Button(action:{value = value + "0"}, label:{
                    Text("0")
                        .frame(width:100,height:60)
                        .border(Color.black,width:2)
                        .font(.title)
                })
                Button(action:{first = value
                    value = ""
                operation = "+"}, label:{
                    Text("+")
                        .frame(width:100,height:60)
                        .border(Color.black,width:2)
                        .font(.title)
                })
                Button(action:{first = value
                    value = ""
                    operation = "-"}, label:{
                    Text("-")
                        .frame(width:100,height:60)
                        .border(Color.black,width:2)
                        .font(.title)
                })
                
            }
            HStack{
                Button(action:{first = value
                    value = ""
                    operation = "*"}, label:{
                    Text("*")
                        .frame(width:100,height:60)
                        .border(Color.black,width:2)
                        .font(.title)
                })
                Button(action:{first = value
                    value = ""
                    operation = "/"}, label:{
                    Text("/")
                        .frame(width:100,height:60)
                        .border(Color.black,width:2)
                        .font(.title)
                })
                Button(action:{first = value
                    operation = "sin"
                    huj = calculate(first: Int(first) ?? 0, second: Int(second) ?? 0,operation: operation)
                value = String(huj)}, label:{
                    Text("sin")
                        .frame(width:100,height:60)
                        .border(Color.black,width:2)
                        .font(.title)
                })
                
            }
            Button(action:{second = value
                huj = calculate(first: Int(first) ?? 0, second: Int(second) ?? 0,operation: operation)
            value = String(huj)}, label:{
                Text("Oblicz")
                    .frame(width:315,height:60)
                    .border(Color.black,width:2)
                    .font(.title)
            })
        }
    }
}

#Preview {
    ContentView()
}
