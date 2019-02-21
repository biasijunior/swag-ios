//
//  ProductVC.swift
//  swag
//
//  Created by Biasi on 3/9/18.
//  Copyright © 2018 Biasi. All rights reserved.
//

import UIKit

class ProductVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
   
    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self
        productsCollection.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func initProducts (category: Category){
        products = DataService.instance.getProduct(forCategorTitle: category.title)
        navigationItem.title = category.title
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        debugPrint("number of rows is \(indexPath.row) and section \(indexPath.section)")
        var n = 1
        debugPrint("the N \(n)")
        
        if n == 1 {
            print("nothing is here biasi")
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
                let product = products[indexPath.section]
                cell.updateViews(product: product)
                n=0
                return cell

        }
//        if n == 1 {
//            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
//                let product = products[indexPath.section]
//                cell.updateViews(product: product)
//                n=0
//                return cell
//        }
            else {
                if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell2", for: indexPath) as? ProductCell2{
                    let product = products[indexPath.section]
                    cell.updateView(product: product)
                    return cell
                }

            }
            //ui designe
//            cell.contentView.layer.cornerRadius = 4.0
//            cell.contentView.layer.borderWidth = 1.0
//            cell.contentView.layer.borderColor = UIColor.clear.cgColor
//            cell.contentView.layer.masksToBounds = false
//
////            shadows layout
//            cell.layer.shadowOffset = CGSize(width: 0, height: 2)
//            cell.layer.shadowColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
//            cell.layer.shadowRadius = 5.0
//            cell.layer.shadowOpacity = 2.0
//
//            cell.layer.masksToBounds = false
//            cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
            
            
//            return cell
        }
        return ProductCell()
    }
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return products.count
    }

}
