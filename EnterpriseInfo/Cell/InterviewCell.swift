//
//  InterviewCell.swift
//  EnterpriseInfo
//
//  Created by Jeeeun Lim on 2020/09/28.
//

import UIKit

class InterviewCell: UITableViewCell {


    static let identifier = "InterviewCell"
    @IBOutlet weak var questionLabel: UILabel!
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
         
            if  let urlString = companyInfo.logo_path{
                let url = URL(string: urlString)
                self.logoImage.kf.setImage(with: url)
            }
            self.logoImage.contentMode = .scaleToFill
            self.questionLabel.text = companyInfo.interview_question
        }
    }
    
    
}
