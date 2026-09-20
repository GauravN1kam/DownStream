//
//  ContentView.swift
//  DownStream
//
//  Created by Gaurav Nikam on 20/09/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State var link: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Link", text: $link)
                .onSubmit {
                    print("\(link)")
                }
                .frame(minWidth: 120, maxWidth: 360)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .border(.primary)
                .textFieldStyle(.roundedBorder)
                
                Button("Submit") {
                    print("Link is: \(link)")
                }
                .buttonStyle(.borderedProminent)
            }
            .navigationDestination(for: Int.self) { n in Text("\(n)") }
            .navigationTitle("DownStream")
            .navigationBarTitleDisplayMode(.inline)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
