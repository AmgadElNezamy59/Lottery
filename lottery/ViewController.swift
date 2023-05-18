//
//  ViewController.swift
//  lottery
//
//  Created by Amgad Salah on 29/11/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ball1: UILabel!
    @IBOutlet weak var ball2: UILabel!
    @IBOutlet weak var ball3: UILabel!
    @IBOutlet weak var ball4: UILabel!
    @IBOutlet weak var ball5: UILabel!
    @IBOutlet weak var ball6: UILabel!
    @IBOutlet weak var fromLable: UILabel!
    @IBOutlet weak var toLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        fromLable.text = "0"
        toLable.text="0"
    }

    @IBAction func stepper1Changed(_ sender: UIStepper) {
        
        fromLable.text = String(Int(sender.value))
    }
    
    @IBAction func stepper2Changed(_ sender: UIStepper) {
        toLable.text = String(Int(sender.value))
    }
    
    @IBAction func generateButtonPreesed(_ sender: UIButton) {
        let from = Int(fromLable.text ?? "0")
        let to = Int(toLable.text ?? "0")
        
        if to! >= from!{
            ball1.text = String(Int.random(in: (from ?? 0)...(to ?? 99)))
            ball2.text = String(Int.random(in: (from ?? 0)...(to ?? 99)))
            ball3.text = String(Int.random(in: (from ?? 0)...(to ?? 99)))
            ball4.text = String(Int.random(in: (from ?? 0)...(to ?? 99)))
            ball5.text = String(Int.random(in: (from ?? 0)...(to ?? 99)))
            ball6.text = String(Int.random(in: (from ?? 0)...(to ?? 99)))
        }
    }
    
}

