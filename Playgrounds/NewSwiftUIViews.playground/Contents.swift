import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        VStack {
            TextEditorViewExample()
            LabelViewExample()
            ProgressViewExample()
            Spacer()
        }.frame(width: 300)
    }
}




struct TextEditorViewExample: View {
    @State private var fullText: String = "This is some editable text..."

        var body: some View {
            TextEditor(text: $fullText)
                .frame(height: 100)
                .border(Color.black, width: 5)
                .cornerRadius(8)
                
        }
}



struct LabelViewExample: View {

        var body: some View {
            Label("Label", systemImage: "arrow.right")
                .labelStyle(TitleOnlyLabelStyle())
                
        }
}

struct ProgressViewExample: View {
    
    @State private var progress = 0.5
    var body: some View {
        VStack {
            ProgressView(value: progress)
            Button("More", action: { progress += 0.05 })
        }
    }
    
}

PlaygroundPage.current.setLiveView(ContentView())

