import Foundation
import Ignite

struct Home: StaticPage {
    let title = "Joe Maghzal"
    let gradient = Gradient(
        colors: [
            Color(hex: "#ffac45"),
            Color(hex: "#f05138")
        ],
        type: .linear(angle: 180)
    )
    
    var body: some HTML {
        ZStack {
            Text("© 2026 Joe Maghzal")
                .font(.footer)
                .foregroundStyle(.slateGray)
                .frame(minHeight: .vh(Percentage(100)), alignment: .bottom)
                .padding(.bottom, .rem(1))
            
            VStack {
                VStack(alignment: .leading) {
                    Text {
                        "Joe Maghzal,"
                        "<br>"
                        Link("Swift", target: "https://swift.org")
                            .linkButtonStyle()
                            .foregroundStyle(gradient)
                        " & everything that surrounds it"
                    }.font(.title)
                    .style(.lineHeight, "1.875rem")
                    
                    HStack(spacing: 12) {
                        Link("Email", target: "mailto:joey@joemaghzal.dev")
                            .linkButtonStyle()
                            .foregroundStyle(.gray)
                        Link("LinkedIn", target: "https://linkedin.com/in/swiftyjoeyy")
                            .linkButtonStyle()
                            .foregroundStyle(.gray)
                        Link("GitHub", target: "https://github.com/swiftyjoeyy")
                            .linkButtonStyle()
                            .foregroundStyle(.gray)
                    }.font(.link)
                    
                }.frame(minHeight: .vh(Percentage(100)), alignment: .center)
            }.frame(minHeight: .vh(Percentage(100)), alignment: .center)
        }.margin(.horizontal, .rem(1))  
    }
}
