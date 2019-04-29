//
//  NutrientProgressCell.swift
//  VicDiet
//
//  Created by Ming Yang on 22/4/19.
//  Copyright © 2019 Ming Yang. All rights reserved.
//

import UIKit

class MarkInstructionCell: UITableViewCell {
    
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
    
    func setupCellView(grade: String){
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
        if grade == "C"{
            NSLayoutConstraint.activate([
                CLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0),
                CLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                CLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.135),
                CLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.27)
                ])
        }else{
            NSLayoutConstraint.activate([
                CLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0),
                CLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                CLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.09),
                CLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.18)
                ])
        }
        if grade == "D"{
            NSLayoutConstraint.activate([
                DLabel.rightAnchor.constraint(equalTo: CLabel.leftAnchor, constant: -10),
                DLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                DLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.135),
                DLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.27)
                ])
        }else{
            NSLayoutConstraint.activate([
                DLabel.rightAnchor.constraint(equalTo: CLabel.leftAnchor, constant: -10),
                DLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                DLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.09),
                DLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.18)
                ])
        }
        if grade == "P"{
            NSLayoutConstraint.activate([
                PLabel.leftAnchor.constraint(equalTo: CLabel.rightAnchor, constant: 10),
                PLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                PLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.135),
                PLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.27)
                ])
        }else{
            NSLayoutConstraint.activate([
                PLabel.leftAnchor.constraint(equalTo: CLabel.rightAnchor, constant: 10),
                PLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                PLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.09),
                PLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.18)
                ])
        }
        if grade == "HD"{
            NSLayoutConstraint.activate([
                HDLabel.rightAnchor.constraint(equalTo: DLabel.leftAnchor, constant: -10),
                HDLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                HDLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.135),
                HDLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.27)
                ])
        }else{
            NSLayoutConstraint.activate([
                HDLabel.rightAnchor.constraint(equalTo: DLabel.leftAnchor, constant: -10),
                HDLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                HDLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.09),
                HDLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.18)
                ])
        }
        if grade == "N"{
            NSLayoutConstraint.activate([
                NLabel.leftAnchor.constraint(equalTo: PLabel.rightAnchor, constant: 10),
                NLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                NLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.135),
                NLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.27)
                ])
        }else{
            NSLayoutConstraint.activate([
                NLabel.leftAnchor.constraint(equalTo: PLabel.rightAnchor, constant: 10),
                NLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                NLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.09),
                NLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.18)
                ])
        }
    }
    
    
    
}
