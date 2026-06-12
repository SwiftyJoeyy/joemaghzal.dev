import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some Document {
        Head {
            for favicon in FavIcon.allCases {
                favicon.metalink
            }
        }
        
        Body {
            content
        }
    }
}
