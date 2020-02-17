//
//  ViewController.swift
//  FlappyBird
//
//  Created by apple on 2020/02/14.
//  Copyright © 2020 yo.sato. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // SKViewに型を変換する
        let skView = self.view as! SKView

        // FPSを表示する
        skView.showsFPS = true

        // ノードの数を表示する
        skView.showsNodeCount = true

        // ビューと同じサイズでシーンを作成する
        let scene = GameScene(size:skView.frame.size) // ←GameSceneクラスに変更する

        // ビューにシーンを表示する
        skView.presentScene(scene)
    }
    
    // ステータスバーを消す
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }

}

