//
//  DataService.swift
//  swag
//
//  Created by Biasi on 3/8/18.
//  Copyright © 2018 Biasi. All rights reserved.
//

import Foundation
class DataService{
    static let instance  = DataService()//refers to the same object in memory

    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Biasi's hat1", price: "$12", imageName: "hat01.png"),
        Product(title: "Biasi's hat2", price: "$72", imageName: "hat02.png"),
        Product(title: "Ibtissem hat4", price: "$62", imageName: "hat03.png"),
        Product(title: "Wiga's hat1", price: "$45", imageName: "hat04.png"),
        Product(title: "biasi hoodie", price: "$12", imageName: "hoodie01.png"),
        Product(title: "looks awesome hoodie", price: "$72", imageName: "hoodie02.png"),
        Product(title: "general hoodie", price: "$62", imageName: "hoodie03.png"),
        Product(title: "Wiga's hoodie01", price: "$45", imageName: "hoodie04.png")
    ]
    
    private let hoodies = [
        Product(title: "biasi hoodie", price: "$12", imageName: "hoodie01.png"),
        Product(title: "looks awesome hoodie", price: "$72", imageName: "hoodie02.png"),
        Product(title: "general hoodie", price: "$62", imageName: "hoodie03.png"),
        Product(title: "Wiga's hoodie01", price: "$45", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "shirts biasi hoodie", price: "$12", imageName: "shirts01.png"),
        Product(title: "looks awesome shirts", price: "$72", imageName: "shirts02.png"),
        Product(title: "general shirts", price: "$62", imageName: "shirts03.png"),
        Product(title: "Wiga's shirts", price: "$45", imageName: "shirts04.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories () -> [Category]{
        return categories
    }
    
    func getProduct(forCategorTitle title: String) -> [Product]{
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    func getShirts() -> [Product] {
        return shirts
    }
    func getHoodies() -> [Product] {
        return hoodies
    }
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
}
