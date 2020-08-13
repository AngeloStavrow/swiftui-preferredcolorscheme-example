import SwiftUI

struct ContentView: View {
    @ObservedObject var prefs: Preferences

    var body: some View {
        Picker(selection: $prefs.schemeSelection, label: Text("Color Scheme")) {
            Text("System").tag(0)
            Text("Light").tag(1)
            Text("Dark").tag(2)
        }
        .pickerStyle(SegmentedPickerStyle())
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(prefs: Preferences())
    }
}
