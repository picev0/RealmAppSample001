//
//  ViewController.swift
//  RealmAppSample001
//
//  Created by Shuhei Murata on 2018/03/07.
//  Copyright © 2018年 xyz.pice001. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tanaka = Person()
        //使うごとにオブジェクトが増える
        tanaka.name = "田中"
        tanaka.age = 23
        tanaka.sex = "MALE"
        
        let realm = try! Realm()
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        try! realm.write() {
            realm.add(tanaka)
        }
        
        realm.objects(Person.self)
        print(realm.objects(Person.self))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

