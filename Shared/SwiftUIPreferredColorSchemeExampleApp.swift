import SwiftUI

@main
struct SwiftUIPreferredColorSchemeExampleApp: App {
    @StateObject var prefs = Preferences()

    var body: some Scene {
        WindowGroup {
            ContentView(prefs: prefs)
                .preferredColorScheme(prefs.selectedColorScheme)
        }
    }
}
