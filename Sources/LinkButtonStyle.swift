//
//  LinkButtonStyle.swift
//  IgniteStarter
//
//  Created by Joe Maghzal on 30/05/2026.
//

import Foundation
import Ignite

extension Link {
    func linkButtonStyle() -> some InlineElement {
        self
            .target(.blank)
            .relationship(.noOpener, .noReferrer)
            .role(.none)
            .hoverEffect { effect in
                effect
                    .opacity(0.75)
            }
    }
}
