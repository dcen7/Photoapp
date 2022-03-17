//
//  ViewController.swift
//  Photorama
//
//  Created by Mehmet Deniz Cengiz on 3/16/22.
//

import UIKit

class PhotosViewController: UIViewController {

    @IBOutlet private var imageView: UIImageView!
    var store: PhotoStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.fetchInterestingPhotos()
    }


}

