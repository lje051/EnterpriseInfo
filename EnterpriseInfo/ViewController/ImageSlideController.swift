//
//  ImageSlideController.swift
//  EnterpriseInfo
//
//  Created by Jeeeun Lim on 2020/09/28.
//

import UIKit


class ImageSlideController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    static let identifier = "ImageSlideController"
    
    var imageSlideList: [ImageSlide]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        layout.scrollDirection = .horizontal
        collectionView.setCollectionViewLayout(layout, animated: true)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .white
        collectionView.register(ImageSlideCell.self, forCellWithReuseIdentifier: ImageSlideCell.identifier)
        collectionView.contentInset = .init(top: 0, left: 19, bottom: 0, right: 19)
 
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.imageSlideList?.count ?? 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 6
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ImageSlideCell.identifier, for: indexPath) as! ImageSlideCell
        let imageSlideList = self.imageSlideList![indexPath.item] as ImageSlide
        if let url = URL(string: imageSlideList.cover_image)  {
            cell.imageView.downloaded(from:url)
        }
        
        return cell
    }
    
  
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: 150, height: 200)
    }
   
}
