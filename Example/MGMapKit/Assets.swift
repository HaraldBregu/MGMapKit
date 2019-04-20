// 
//  Assets.swift
//
//  Created by harald bregu on 20/04/2019.
//  Copyright © 2019 Dream Building Company. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation
import MGMapKit


class Assets {}
extension Assets:MapKitAsset {}

protocol MapKitAsset {
    static var assets:MapAsset { get }
}

extension MapKitAsset {
    static var assets:MapAsset {
        return MapAsset(
            string: MapString(
                title: "My Location",
                navigationTitle: "My Location"),
            font: MapFont(),
            image: MapImage(),
            color: MapColor(
                backgroundView: .black,
                navigationBar: .black,
                navigationBarTint: .white,
                toolBar: .black,
                toolBarTint: .white))
    }
}


struct MapAsset:MGMapAsset {
    var string: MGMapString
    var font: MGMapFont
    var image: MGMapImage
    var color: MGMapColor
}

struct MapString:MGMapString {
    var title:String
    var navigationTitle:String
}

struct MapFont:MGMapFont {

}

struct MapImage:MGMapImage {

}

struct MapColor:MGMapColor {
    var backgroundView:UIColor
    var navigationBar:UIColor
    var navigationBarTint:UIColor
    var toolBar:UIColor
    var toolBarTint:UIColor
}
