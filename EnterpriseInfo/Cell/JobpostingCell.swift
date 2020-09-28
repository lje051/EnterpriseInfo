//
//  JobpostingCell.swift
//  EnterpriseInfo
//
//  Created by Jeeeun Lim on 2020/09/27.
//

import UIKit

class JobpostingCell: UITableViewCell {
    static let identifier = "JobpostingCell"
    @IBOutlet weak var review_avgLabel: UILabel!
    @IBOutlet weak var conditionLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
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
            self.companyName.text = companyInfo.company_name
            self.titleLabel.text = companyInfo.title
            self.statusLabel.text = companyInfo.message
            if  let urlString = companyInfo.logo{
                let url = URL(string: urlString)
                self.logoImage.kf.setImage(with: url)
            }
            self.logoImage.contentMode = .scaleToFill
            
            review_avgLabel.text = String(companyInfo.review_avg_cache ?? 0)
        }
    }
}
