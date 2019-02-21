//
//  ProductCell2.swift
//  swag
//
//  Created by Biasi on 2/21/19.
//  Copyright © 2019 Biasi. All rights reserved.
//

import UIKit

class ProductCell2: UICollectionViewCell {
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var ProductImage: UIImageView!
    
    func updateView(product: Product){
        ProductImage.image = UIImage(named: product.imageName)
        title.text = product.title
        price.text = product.price
    }
    
    
    
}
