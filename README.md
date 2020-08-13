# SwiftUI preferredColorScheme Example

A demo of the [preferredColorScheme modifier](https://developer.apple.com/documentation/swiftui/group/preferredcolorscheme(_:)) in SwiftUI multiplatform apps that demonstrates a couple of bugs:

## FB8382883 - "On macOS 11β4, preferredColorScheme modifier does not respect .light ColorScheme"

On macOS 11β4, setting the `preferredColorScheme` modifier on a view to `.light` does not override the system’s colour scheme. This behaviour is expected if `preferredColorScheme` is `.none`; otherwise the app should remain in light mode regardless of the system scheme. Note that `preferredColorScheme` is respected when set to `.dark` instead.

### Steps to Reproduce

0. If necessary, set your Mac running Big Sur β4 to light mode
1. Open the attached SwiftUI multiplatform sample project
2. Build and run the macOS app
3. Choose the “Light” option in the segmented control
4. Change the system’s colour scheme to dark

### Expectation

The app continues to be presented in its light colour scheme.

### Actual Result

The app switches to match the system’s colour scheme.

## FB8383053 - "On iOS 14β4, it is not possible to unset preferredColorScheme after setting it to either .light or .dark"

In iOS 14β4, if a view’s `preferredColorScheme` is initially `nil`, the view will respect the system scheme setting. After setting the `preferredColorScheme` modifier on the view to either `.light` or `.dark`, it is no longer possible to revert back to having the app respect the system scheme setting. 

### Steps to Reproduce

1. Open the attached SwiftUI multiplatform sample project
2. Build and run the iOS app
3. Observe that the default “System” option sets the app’s color scheme based on the system setting
4. Choose either the “Light” or “Dark” option in the segmented control, and observe that the app’s color scheme changes to that selection
5. Choose the “System” option again and test changing the system’s scheme setting

### Expectation

The app’s color scheme follows the system’s scheme setting.

### Actual Result

The app’s color scheme remains “stuck” on whatever the last preferredColorScheme setting was.
