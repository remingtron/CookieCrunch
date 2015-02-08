//
//  GameSceneSpec.swift
//  CookieCrunch
//
//  Created by Remington Davenport on 2/7/15.
//  Copyright (c) 2015 Remington Davenport. All rights reserved.
//

import Quick
import Nimble
import CookieCrunch

class GameSceneSpec: QuickSpec {
    override func spec() {
        describe("game scene") {
            
            it("has a swipe from column that starts as nil") {
                expect(GameScene(size: CGSize(width: 1, height: 1)).swipeFromColumn).to(beNil())
            }
            
            it("has a swipe from row that starts as nil") {
                expect(GameScene(size: CGSize(width: 1, height: 1)).swipeFromRow).to(beNil())
            }
        }
    }
}
