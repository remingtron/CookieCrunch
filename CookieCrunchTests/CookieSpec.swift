//
//  CookieSpec.swift
//  CookieCrunchTests
//
//  Created by Remington Davenport on 2/6/15.
//  Copyright (c) 2015 Remington Davenport. All rights reserved.
//

import Quick
import Nimble

class CookieTypeSpec: QuickSpec {
    override func spec() {
        describe("cookie type") {
            
            it("has a sprite name") {
                expect(CookieType.Croissant.spriteName).to(equal("Croissant"))
            }
            
            it("has a highlighted sprite name") {
                expect(CookieType.Croissant.highlightedSpriteName).to(equal("Croissant-Highlighted"))
            }
        }
    }
}

class CookieSpec: QuickSpec {
    override func spec() {
        describe("a cookie") {
            
            var cookie: Cookie?
            
            beforeEach() {
                cookie = Cookie(column: 1, row: 2, cookieType: CookieType.Cupcake)
            }
            
            it("has a column") {
                expect(cookie!.column).to(equal(1))
            }
            
            it("has a row") {
                expect(cookie!.row).to(equal(2))
            }
            
            it("has a type") {
                expect(cookie!.cookieType).to(equal(CookieType.Cupcake))
            }
            
            it("does not equal another cookie with a different column") {
                let anotherCookie = Cookie(column: 2, row: 2, cookieType: CookieType.Danish)
                expect(cookie).notTo(equal(anotherCookie))
            }
            
            it("equals a different cookie with the same row and column") {
                let anotherCookie = Cookie(column: 1, row: 2, cookieType: CookieType.Danish)
                expect(cookie).to(equal(anotherCookie))
            }
        }
    }
}

