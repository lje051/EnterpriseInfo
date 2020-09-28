//
//  ReviewCell.swift
//  EnterpriseInfo
//
//  Created by Jeeeun Lim on 2020/09/27.
//

import UIKit

class ReviewCell: UITableViewCell {
    static let identifier = "ReviewCell"
    @IBOutlet weak var consLabel: UILabel!
    @IBOutlet weak var prosLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var companyClassifier: UILabel!
    @IBOutlet weak var companyName: UILabel!
    @IBOutlet weak var logoImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(_ companyInfo: CompanyInfo?) {
        if let companyInfo = companyInfo {
            self.companyName.text = companyInfo.name
            self.commentLabel.text = companyInfo.interview_question
            if  let urlString = companyInfo.logo_path{
                let url = URL(string: urlString)
                self.logoImage.kf.setImage(with: url)
            }
            self.logoImage.contentMode = .scaleToFill
            
            prosLabel.text = companyInfo.pros
            consLabel.text = companyInfo.cons
        }
    }
    
}
