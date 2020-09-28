//
//  HorizontalCell.swift
//  EnterpriseInfo
//
//  Created by Jeeeun Lim on 2020/09/28.
//

import UIKit

class HorizontalCell: UITableViewCell {
 

    let imageSlideController = ImageSlideController(collectionViewLayout: UICollectionViewFlowLayout())
    
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        //  imageView.layer.cornerRadius = 12
//
//
//        //with xib. HorizontalCell
//        //이게 랜더링될때 뭐부터 되느냐에 따라 스크롤이 안되는것 같음
//
//
//
//    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
       
    }
    
    required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)

    }
    override func awakeFromNib() {
        super.awakeFromNib()
        addSubview(imageSlideController.view)
      
        imageSlideController.view.anchor(top:self.topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 0))  //
    }
    
  

 
   
}
