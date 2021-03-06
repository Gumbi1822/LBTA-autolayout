//
//  SwipingController+UICollectionView.swift
//  autolayout
//
//  Created by Mikaela Caron on 2/24/19.
//  Copyright © 2019 Mikaela Caron. All rights reserved.
//

import UIKit

extension SwipingController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! PageCell
        
        let page = pages[indexPath.item]
        cell.page = page
        
        //bad way doesn't follow MVC can't access private variables
        //cell.bearImageView.image = UIImage(named: page.imageName)
        //cell.descriptionTextView.text = page.headerText
        
        //bad way. it's easy to break
        //let imageName = imageNames[indexPath.item]
        //cell.bearImageView.image = UIImage(named: imageName)
        //cell.descriptionTextView.text = headerStrings[indexPath.item]
        
        //DON'T DO THIS!! bad idea! Keeps reloading images
        /*
         let imageView = UIImageView()
         cell.addSubview(imageView)
         */
        
        //cell.backgroundColor = indexPath.item % 2 == 0 ? .red : .green
        /* this is the long version of the above statement
         if(indexPath.item % 2 == 0) {
         cell.backgroundColor = .red
         } else {
         cell.backgroundColor = .green
         }*/
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: view.frame.width, height: view.frame.height )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
