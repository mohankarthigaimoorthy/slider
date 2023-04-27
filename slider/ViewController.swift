//
//  ViewController.swift
//  slider
//
//  Created by Mohan K on 12/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lable: UILabel!
    
    
    @IBOutlet weak var mySlider: UISlider!
    
     

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        mySlider.minimumValue = 0
        mySlider.maximumValue = 31
       
        mySlider.addTarget(self, action: #selector(didClickChanage(sender: )), for: .valueChanged)
        
        
    }
    
    
    @objc func didClickChanage(sender: UISlider){
        
        let roundedValue = round(sender.value)
        sender.value = roundedValue
        lable.text = "your  volume "+Int(sender.value).description
        
    }

   @IBAction func SliderValueChanged(_ sender: UISlider) {
//        let roundedValue = round(sender.value)
//        sender.value = roundedValue
//        lable.text = "your  volume "+Int(sender.value).description
    }
    
}

