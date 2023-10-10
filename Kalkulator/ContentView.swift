//
//  ContentView.swift
//  Kalkulator
//
//  Created by Damian on 09/10/2023.
//

import SwiftUI


struct ContentView: View {
    
        
    

    @State var value = ""
    @State var first = ""
    @State var second = ""
    @State var operation = ""
    @State var final = 10.0
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
                    final = operations().calculate(first: Int(first) ?? 0, second: Int(second) ?? 0,operation: operation)
                value = String(Int(final))}, label:{
                    Text("sin")
                        .frame(width:100,height:60)
                        .border(Color.black,width:2)
                        .font(.title)
                })
                
            }
            Button(action:{second = value
                final = operations().calculate(first: Int(first) ?? 0, second: Int(second) ?? 0,operation: operation)
            value = String(Int(final))}, label:{
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
