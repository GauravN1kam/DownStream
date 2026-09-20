//
//  ContentView.swift
//  DownStream
//
//  Created by Gaurav Nikam on 20/09/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State var maxElement: Int = 5
    var body: some View {
        NavigationStack {
            List(1..<maxElement, id: \.self) { n in
                NavigationLink("Item \(n)", value: n)
            }
            .navigationDestination(for: Int.self) { n in Text("\(n)") }
            .navigationTitle("DownStream")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add", systemImage: "plus") {
                        maxElement += 1
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
