//
//  ContentView.swift
//  SwiftUIPlaygrounds
//
//  Created by John Holdsworth on 09/12/2021.
//

import SwiftUI
import HotSwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
            Text("Hello, world!")
            SubContent()
        }
        .padding()
        .eraseToAnyView()
    }

    #if DEBUG
    @ObservedObject var iO = injectionObserver
    #endif
}

struct SubContent: View {

    var body: some View {
        VStack {
            Text("Hello, world!")
            Text("Hello, world!")
        }
        .eraseToAnyView()
    }

    #if DEBUG
    @ObservedObject var iO = injectionObserver
    #endif
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
