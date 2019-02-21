//
//  Category.swift
//  swag
//
//  Created by Biasi on 3/8/18.
//  Copyright © 2018 Biasi. All rights reserved.
//

import Foundation
struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init (title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
    
}
