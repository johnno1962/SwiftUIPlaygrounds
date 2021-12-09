# SwiftUIPlaygrounds!

A shell project you can use to iterate over SwiftUI interfaces using
the [HotReloading](https://github.com/johnno1962/HotReloading)
project. Instead of a "preview" the interface is run in a completely
live app and a form of Swizzling used to update when source
files are changed. This form of Swizzling requires the "Other Linker
Flags" `-Xlinker -interposable` to be set for the project. This
form of iteration can be made available to most projects by adding
the HotReloading Swift package.

For this to work reliably you need to erase the type of each interface
`View` struct you want to inject using the `.eraseToAnyView()`
method as shown in
[ContentView.swift](SwiftUIPlaygrounds/ContentView.swift). 
This is provided by the code in
the  [HotSwiftUI](https://github.com/johnno1962/HotSwiftUI) project and
display refreshes are forced when you modify a source by observing
the `injectionObserver` global variable in the `View` struct.

For more details about how this is performed, consult the README.md
of the [InjectionIII](https://github.com/johnno1962/InjectionIII) project.
