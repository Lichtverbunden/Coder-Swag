//
//  Category.swift
//  Coder-Swag
//
//  Created by Ken Krippeler on 17.08.17.
//  Copyright © 2017 Lichtverbunden. All rights reserved.
//

import Foundation

struct Category
{
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String)
    {
        self.title = title
        self.imageName = imageName
    }
}
