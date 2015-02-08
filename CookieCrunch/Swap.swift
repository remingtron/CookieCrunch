//
//  Swap.swift
//  CookieCrunch
//
//  Created by Remington Davenport on 2/7/15.
//  Copyright (c) 2015 Remington Davenport. All rights reserved.
//

struct Swap: Printable {
    let cookieA: Cookie
    let cookieB: Cookie
    
    init(cookieA: Cookie, cookieB: Cookie) {
        self.cookieA = cookieA
        self.cookieB = cookieB
    }
    
    var description: String {
        return "swap \(cookieA) with \(cookieB)"
    }
}