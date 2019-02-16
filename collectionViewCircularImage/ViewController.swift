//
//  ViewController.swift
//  collectionViewCircularImage
//
//  Created by IMCS2 on 2/15/19.
//  Copyright © 2019 com.phani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    
    let labels = ["1","2","3","4","5","6","7","8","9","10"]
    let imgs :[UIImage?]=[
    UIImage(named: "one")!,
    UIImage(named: "two")!,
    UIImage(named: "three")!,
    UIImage(named: "four")!,
    UIImage(named: "five")!,
    UIImage(named: "six")!,
    UIImage(named: "seven")!,
    UIImage(named: "eight")!,
    UIImage(named: "nine")!,
    UIImage(named: "ten")!,
    
    
    ]


    @IBOutlet weak var cv: UICollectionView!
    
    
    @IBOutlet weak var display: UIImageView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return labels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
         cell.cvlabel.text=labels[indexPath.item]
        cell.cvImg.image=imgs[indexPath.item]
        
        return cell
        
    }
    


    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        display.image=imgs[indexPath.item]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

