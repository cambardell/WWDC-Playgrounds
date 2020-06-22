import SwiftUI
import PlaygroundSupport

struct TextEditorView: View {
    @State private var fullText: String = "This is some editable text..."

        var body: some View {
            TextEditor(text: $fullText)
                .frame(height: 50)
                .border(Color.black, width: 5)
                .cornerRadius(8)
                
        }
}

PlaygroundPage.current.setLiveView(TextEditorView())
