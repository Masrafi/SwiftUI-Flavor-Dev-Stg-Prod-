import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }.onAppear {
            print("The environment is: ", Environment.rootURL)
            print("The environment is: ", Environment.apiKey)
        }
        .padding()
    }
}
