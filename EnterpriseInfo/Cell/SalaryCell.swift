//
//  SalaryCell.swift
//  EnterpriseInfo
//
//  Created by Jeeeun Lim on 2020/09/27.
//

import UIKit

class SalaryCell: UITableViewCell {

    static let identifier = "SalaryCell"
    @IBOutlet weak var lowestWageLabel: UILabel!
    @IBOutlet weak var avgWageLabel: UILabel!
    @IBOutlet weak var highestWageLabel: UILabel!
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
            self.avgWageLabel.text = String(companyInfo.salary_avg ?? 0)
            self.highestWageLabel.text = String(companyInfo.salary_highest ?? 0)
            self.lowestWageLabel.text = String(companyInfo.salary_lowest ?? 0)
        }
    }
    
    
}
