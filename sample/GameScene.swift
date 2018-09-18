//
//  GameScene.swift
//  sample
//
//  Created by ウエキチ on 2018/09/15.
//  Copyright © 2018年 ウエキチ. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    let rocket = SKSpriteNode(imageNamed: "rocket.png")
    
    override func didMove(to view: SKView) {
        self.backgroundColor = UIColor(red: 0.09, green: 0.15, blue: 0.3, alpha: 1)
        rocket.position = CGPoint(x: 375, y: 200)
        self.addChild(rocket)
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
    }
    
    func touchMoved(toPoint pos : CGPoint) {
    }
    
    func touchUp(atPoint pos : CGPoint) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch: AnyObject in touches {
            rocket.position = touch.location(in: self)
            rocket.position.y += 120
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
