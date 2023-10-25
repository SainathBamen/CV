//
//  MyCollectionViewCell.swift
//  CV
//
//  Created by Sainath Bamen on 01/06/23.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myView.layer.cornerRadius = 25
        
        
    }

}
