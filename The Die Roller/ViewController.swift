//
//  ViewController.swift
//  The Die Roller
//
//  Created by user254030 on 3/21/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var dieImage: UIImageView!
    @IBOutlet weak var dieResult: UILabel!
    @IBAction func rollDie(_ sender: Any)
    {
        let randomNumber = arc4random_uniform(6) + 1
        self.dieResult.text = String(randomNumber)
        
        switch randomNumber{
            
        case 1:
            self.dieImage.image = UIImage(named: "d1")
        case 2:
            self.dieImage.image = UIImage(named: "d2")
        case 3:
            self.dieImage.image = UIImage(named: "d3")
        case 4:
            self.dieImage.image = UIImage(named: "d4")
        case 5:
            self.dieImage.image = UIImage(named: "d5")
        case 6:
            self.dieImage.image = UIImage(named: "d6")
        default:
            return
        }
    }
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    

}

