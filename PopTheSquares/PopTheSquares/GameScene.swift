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
        newSquare()
        newSquare()
        newSquare()

    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let positionInScene = touch.location(in: self)
        
        let touchedNode = self.atPoint(positionInScene)
        
        if touchedNode.position.x > 0 {
            print("touched")
            touchedNode.removeFromParent()
            newSquare()
        }
    }

    func newSquare() {
    
        //Set up the squares properties
        let size = CGSize(width: 80, height: 80)
        let square = SKSpriteNode(texture: nil, color: .green, size: size)
        
//      Random x axis position
        let randomNumber = CGFloat.random(in: 0 ... self.view!.bounds.width)

        square.position.x = randomNumber
        square.position.y = 0
        
        
//      Action that moves the square up
        let moveUp = SKAction.customAction(withDuration: 2) { (square, _) in
            square.position.y += 7
            
//       Readds sqaure once it out of bounds
            if square.position.y > self.view!.frame.height {
                square.removeFromParent()
                self.newSquare()
            }
            
        }
        
        
        square.run(moveUp)
        addChild(square)
    }
}
