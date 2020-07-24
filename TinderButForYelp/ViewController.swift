//
//  ViewController.swift
//  TinderButForYelp
//
//  Created by Sameer Saptarshi on 7/23/20.
//  Copyright © 2020 SameerSaptarshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet var card: UIView!
    
    @IBAction func panCard(_ sender: UIPanGestureRecognizer) {
        let card = sender.view!
        let point = sender.translation(in: view)
        card.center = CGPoint(x: view.center.x + point.x, y: view.center.y + point.y)

        if sender.state == UIGestureRecognizer.State.ended {
            if card.center.x < 75 {
                UIView.animate(withDuration: 0.3, animations: {
                    card.center = CGPoint(x: card.center.x - 200, y: card.center.y)
                })
                return
            } else if card.center.x > (view.frame.width - 75) {
                UIView.animate(withDuration: 0.3, animations: {
                    card.center = CGPoint(x: card.center.x + 200, y: card.center.y)
                })
                return
            }
            UIView.animate(withDuration: 0.2, animations: {
                card.center = self.view.center
            })
        }
        
    }
    
}

