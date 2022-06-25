//
//  ViewController.swift
//  Kalkulator 2.0
//
//  Created by владислав Руднев on 02.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var namberFromScren: Double = 0;
    var ferstNam: Double = 0;
    var mathSign: Bool = false
    var operation: Int = 0;
    @IBOutlet weak var resoult: UILabel!
    
    @IBAction func namberOver(_ sender: UIButton) {
        
        if mathSign == true{
            resoult.text = String(sender.tag)
            mathSign = false
        }
        else{
            resoult.text = resoult.text! + String(sender.tag)
        }
        
        
        namberFromScren = Double(resoult.text!)!
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if resoult.text != nil && sender.tag != 10 && sender.tag != 15 {
            ferstNam = Double(resoult.text!)!
            
            
            if sender.tag == 11 {
                resoult.text = "/"
            }
            else if sender.tag == 12 {
                resoult.text = "x"
            }
            else if sender.tag == 13 {
                resoult.text = "-"
            }
            else if sender.tag == 14 {
                resoult.text = "+"
                
            }
            operation = sender.tag
            mathSign = true
            
        }
        else if sender.tag == 15 {
            if operation == 11 {
                resoult.text = String(ferstNam / namberFromScren)
            }
            else if operation == 12 {
                resoult.text = String(ferstNam * namberFromScren)
            }
            else if operation == 13 {
                resoult.text = String(ferstNam - namberFromScren)
            }
            else if operation == 14 {
                resoult.text = String(ferstNam + namberFromScren)
            
                
            }
        }
        else if sender.tag == 10{
            resoult.text = ""
            ferstNam = 0
            namberFromScren = 0
             operation = 0
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

