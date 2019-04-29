//
//  TableViewCell.swift
//  VicDiet
//
//  Created by Ming Yang on 17/4/19.
//  Copyright © 2019 Ming Yang. All rights reserved.
//

import UIKit

class DashboardOverviewCell: UITableViewCell {
    
    let HDLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.text = "HD"
        label.font = UIFont.boldSystemFont(ofSize: 15.0)
        label.backgroundColor = .green
        label.layer.cornerRadius = 30
        return label
    }()
    let DLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.text = "D"
        label.font = UIFont.boldSystemFont(ofSize: 15.0)
        label.backgroundColor = .green
        label.layer.cornerRadius = 30
        return label
    }()
    let CLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.text = "C"
        label.font = UIFont.boldSystemFont(ofSize: 15.0)
        label.backgroundColor = .green
        label.layer.cornerRadius = 30
        return label
    }()
    let PLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.text = "P"
        label.font = UIFont.boldSystemFont(ofSize: 15.0)
        label.backgroundColor = .green
        label.layer.cornerRadius = 30
        return label
    }()
    let NLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.text = "N"
        label.font = UIFont.boldSystemFont(ofSize: 15.0)
        label.backgroundColor = .green
        label.layer.cornerRadius = 30
        return label
    }()
    let levelTextLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.textAlignment = .center
        label.text = "Healthy Intake Level"
        label.font = UIFont.boldSystemFont(ofSize: 15.0)
        label.backgroundColor = .clear
        label.layer.cornerRadius = 30
        return label
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCellView(grade: String?){
        addSubview(CLabel)
        CLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(DLabel)
        DLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(PLabel)
        PLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(HDLabel)
        HDLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(NLabel)
        NLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(levelTextLabel)
        levelTextLabel.translatesAutoresizingMaskIntoConstraints = false
        if grade == "C"{
            NSLayoutConstraint.activate([
                CLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -frame.width/9),
                CLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                CLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.16),
                CLabel.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.16)
                ])
        }else{
            NSLayoutConstraint.activate([
                CLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -frame.width/9),
                CLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                CLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1),
                CLabel.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1)
                ])
        }
        if grade == "D"{
            NSLayoutConstraint.activate([
                DLabel.rightAnchor.constraint(equalTo: CLabel.leftAnchor, constant: -10),
                DLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                DLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.16),
                DLabel.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.16)
                ])
        }else{
            NSLayoutConstraint.activate([
                DLabel.rightAnchor.constraint(equalTo: CLabel.leftAnchor, constant: -10),
                DLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                DLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1),
                DLabel.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1)
                ])
        }
        NSLayoutConstraint.activate([
            levelTextLabel.bottomAnchor.constraint(equalTo: DLabel.topAnchor, constant: -frame.width/15),
            levelTextLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -frame.width/4.5),
            levelTextLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
            levelTextLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.27)
            ])
        if grade == "P"{
            NSLayoutConstraint.activate([
                PLabel.leftAnchor.constraint(equalTo: CLabel.rightAnchor, constant: 10),
                PLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                PLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.16),
                PLabel.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.16)
                ])
        }else{
            NSLayoutConstraint.activate([
                PLabel.leftAnchor.constraint(equalTo: CLabel.rightAnchor, constant: 10),
                PLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                PLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1),
                PLabel.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1)
                ])
        }
        if grade == "HD"{
            NSLayoutConstraint.activate([
                HDLabel.rightAnchor.constraint(equalTo: DLabel.leftAnchor, constant: -10),
                HDLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                HDLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.16),
                HDLabel.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.16)
                ])
        }else{
            NSLayoutConstraint.activate([
                HDLabel.rightAnchor.constraint(equalTo: DLabel.leftAnchor, constant: -10),
                HDLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                HDLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1),
                HDLabel.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1)
                ])
        }
        if grade == "N"{
            NSLayoutConstraint.activate([
                NLabel.leftAnchor.constraint(equalTo: PLabel.rightAnchor, constant: 10),
                NLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                NLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.16),
                NLabel.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.16)
                ])
        }else{
            NSLayoutConstraint.activate([
                NLabel.leftAnchor.constraint(equalTo: PLabel.rightAnchor, constant: 10),
                NLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                NLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1),
                NLabel.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1)
                ])
        }
    }
    
   
    
    
    
}
