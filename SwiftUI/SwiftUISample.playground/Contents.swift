//: A UIKit based Playground for presenting user interface
  
import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    let text: String = "텍스트"
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(.brown)
                .frame(width: 100, height: 100, alignment: .center)
            Button(action: {}) {
                Text(text).bold()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// Present the view controller in the Live View window
//PlaygroundPage.current.setLiveView(ContentView())

// Make a UIHostingController
let viewController = UIHostingController(rootView: ContentView())

// Assign it to the playground's liveView
PlaygroundPage.current.liveView = viewController
