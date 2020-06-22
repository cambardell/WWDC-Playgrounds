import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        VStack {
            TextEditorView()
            LabelView()
        }.frame(width: 300, height: 1000)
    }
}




struct TextEditorView: View {
    @State private var fullText: String = "This is some editable text..."

        var body: some View {
            TextEditor(text: $fullText)
                .border(Color.black, width: 5)
                .cornerRadius(8)
                
        }
}



struct LabelView: View {

        var body: some View {
            Label("Label", systemImage: "arrow.right")
                .labelStyle(TitleOnlyLabelStyle())
                
        }
}

PlaygroundPage.current.setLiveView(ContentView())

