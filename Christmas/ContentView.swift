//
//  ContentView.swift
//  Christmas
//
//  Created by 林楷祐 on 2023/12/18.
//
import SwiftUI

struct ContentView: View {
    @State var snowState: Bool = false
    var body: some View {
        ZStack {
            LinearGradient(colors: [.red,.white,.green], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            Image("flower")
                .resizable()
                .frame(width: 1100,height: 1100)
            VStack {
                Image(snowState ? "snowOpen" : "snowClose")
                    .resizable()
                    .frame(width: 200,height: 200)
                    .animation(.easeOut(duration: 1).repeatForever())
                    .onAppear() {
                        snowState.toggle()
                    }
                Text("Merry Christmas")
                    .foregroundColor(.red)
                    .fontWeight(.black)
                    .font(.largeTitle )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
