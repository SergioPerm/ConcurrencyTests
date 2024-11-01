//
//  ContentView.swift
//  ConcurrencyTests
//
//  Created by Сергей Лепинин on 01/11/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
		.onAppear(perform: {
			startProcessEvents()
		})
    }
}

#Preview {
    ContentView()
}
