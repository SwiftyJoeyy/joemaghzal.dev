import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = ExampleSite()
        
        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {
    let name = "Joe Maghzal"
    let url = URL(static: "https://joemaghzal.dev")
    let builtInIconsEnabled = true
    
    let author = "Joe Maghzal"
    
    let homePage = Home()
    let layout = MainLayout()
    let darkTheme: (any Theme)? = nil
    let lightTheme: (any Theme)? = DefaultTheme()
}

struct DefaultTheme: Theme {
    let colorScheme = ColorScheme.light
    let background = Color.white
}
