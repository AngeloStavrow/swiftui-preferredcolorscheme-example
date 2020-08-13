import SwiftUI

class Preferences: ObservableObject {
    @Published var selectedColorScheme: ColorScheme?
    @Published var schemeSelection: Int = 0 {
        didSet {
            switch schemeSelection {
            case 1:
                selectedColorScheme = .light
            case 2:
                selectedColorScheme = .dark
            default:
                selectedColorScheme = .none
            }
        }
    }
}
