//
//  ImageSlideCell.swift
//  EnterpriseInfo
//
//  Created by Jeeeun Lim on 2020/09/28.
//

import UIKit

class ImageSlideCell: UICollectionViewCell {



        static let identifier = "ImageSlideCell"
        let imageView = UIImageView()
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            //  imageView.layer.cornerRadius = 12
            imageView.backgroundColor = .clear
            addSubview(imageView)
            imageView.fillSuperview()
            imageView.contentMode = .scaleToFill
            imageView.stylingImv()
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError()
        }

    
}
