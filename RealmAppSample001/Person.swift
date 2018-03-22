//
//  Person.swift
//  RealmAppSample001
//
//  Created by Shuhei Murata on 2018/03/07.
//  Copyright © 2018年 xyz.pice001. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class Person: Object {
    @objc dynamic var name = ""
    @objc dynamic var age = 0
    @objc dynamic var sex = ""
}
