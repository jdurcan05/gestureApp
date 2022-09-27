//
//  ViewController.swift
//  gestureApp
//
//  Created by JAMES DURCAN on 9/23/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var backGround: UIImageView!
    @IBOutlet weak var labelOutlet: UILabel!
    var backCheck = true
    @IBOutlet weak var boatImage: UIImageView!
    @IBOutlet weak var handImage: UIImageView!
    @IBOutlet weak var birdImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapAction2(_ sender: UITapGestureRecognizer) {
        print("Hello")
        if(backCheck){
            backGround.image = UIImage(named: "OCEAN")
            labelOutlet.text = "Now you can get me my hand and a boat and parrot"
            backCheck = false
        }
        else if(!backCheck){
            backGround.image = UIImage(named: "BLACK")
            labelOutlet.text = "Help me! I need an ocean!"
            backCheck = true
        }
        let pannedLoc = sender.location(in: view)
        boatImage.center = pannedLoc
    }
    //make sure you enable user interaction
    
   
    
    @IBAction func handDrag(_ sender: UIPanGestureRecognizer) {
        if (!backCheck){
        let pannedLoc = sender.location(in: view)
        handImage.center = pannedLoc
        }
    }
    @IBAction func birdDrag(_ sender: UIPanGestureRecognizer) {
        if (!backCheck){
        let pannedLoc = sender.location(in: view)
        birdImage.center = pannedLoc
        }
    }
}


