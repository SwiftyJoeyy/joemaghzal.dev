//
//  FavIcon.swift
//  IgniteStarter
//
//  Created by Joe Maghzal on 30/05/2026.
//

import Ignite

enum FavIcon: CaseIterable {
    case `32px`
    case `16px`
    
    var rel: String {
        switch self {
            case .`32px`, .`16px`: "icon"
        }
    }
    
    var href: String {
        return "/images/\(filename)"
    }
    
    var filename: String {
        switch self {
            case .`32px`: "favicon-32.png"
            case .`16px`: "favicon-16.png"
        }
    }
    
    var size: String {
        switch self {
            case .`32px`: "32x32"
            case .`16px`: "16x16"
        }
    }
    
    var type: String {
        switch self {
            case .`32px`, .`16px`: "image/png"
        }
    }
    
    var metalink: MetaLink {
        MetaLink(href: href, rel: rel)
            .customAttribute(name: "sizes", value: size)
            .customAttribute(name: "type", value: type)
    }
}
