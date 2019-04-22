//
//  LadderFormatTests.swift
//  LadderGameTests
//
//  Created by 이동영 on 22/04/2019.
//  Copyright © 2019 Codesquad Inc. All rights reserved.
//

import XCTest

class LadderFormatTests: XCTestCase {
    var players:[LadderPlayer] = [LadderPlayer]()
    var height :Int?
    
    override func setUp() {
        do{
            players.append(try LadderPlayer.init(name: "Java"))
            players.append(try LadderPlayer.init(name: "Swift"))
            players.append(try LadderPlayer.init(name: "C++"))
            height = 10
        }catch{
            ()
        }
    }
    
    
    func testNumOfSteps(){
        guard let height = height else { return }
        let ladderInfo = LadderInfo.init(players: players, height: height)
        XCTAssertEqual(ladderInfo.getNumOfSteps(), self.players.count-1,"사다리 생성시 플레이어수 -1 만큼의 간격이 설정된다.")
    }
    
    
}
