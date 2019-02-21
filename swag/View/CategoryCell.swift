//
//  CategoryCell.swift
//  swag
//
//  Created by Biasi on 3/8/18.
//  Copyright © 2018 Biasi. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var categoryTitle : UILabel!
    
    func updateViews (category : Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
  

}
