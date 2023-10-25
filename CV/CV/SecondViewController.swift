//
//  SecondViewController.swift
//  CV
//
//  Created by Sainath Bamen on 27/08/23.
//

import UIKit

class SecondViewController: UIViewController {
    var mimeImage:UIImage?
    var mLabel:String?
    var mLabel2:String?
    var newPrice = 0
    var count = 0
    var price = 0

    
    @IBOutlet weak var newImage: UIImageView!
    @IBOutlet weak var newLabel: UILabel!
    
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var newLabel2: UILabel!
    
    @IBOutlet weak var priceQuantityLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newLabel.text = mLabel
        newImage.image = mimeImage
        newLabel2.text = mLabel2
    }
    
    
    @IBAction func plusBtn(_ sender: Any) {
        count += 1
        quantityLabel.text = "\(count)"
        newPrice += price
        priceQuantityLabel.text = "$\(newPrice)"
        updateLabels()
        
        
    }
    func updateLabels() {
    quantityLabel.text = "\(count)"
   }
}
