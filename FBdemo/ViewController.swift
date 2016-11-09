//
//  ViewController.swift
//  FBdemo
//
//  Created by Macintosh on 10/21/16.
//  Copyright © 2016 Macintosh. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class ViewController: UIViewController {
    // root node cua db
   

    
    @IBOutlet weak var lblId: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let ref: FIRDatabaseReference = FIRDatabase.database().reference()
        ref.child("SanPham").child("SP1").child("idSP").observe(FIRDataEventType.value, with: {
            (snapshot) in
            print(snapshot.value)
            self.lblId.text = snapshot.value as? String
        })
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

