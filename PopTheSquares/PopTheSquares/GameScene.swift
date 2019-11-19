//
//  GameScene.swift
//  PopTheSquares
//
//  Created by Mondale on 11/19/19.
//  Copyright © 2019 Mondale. All rights reserved.
//
import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        moveUp()
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    //Move square in a circle!
    func moveUp() {
    
        //Set up the squares properties
        let size = CGSize(width: 80, height: 80)
        let square = SKSpriteNode(texture: nil, color: .green, size: size)
        square.position.x = 200
        square.position.y = 0
        
        addChild(square)
    }
}
