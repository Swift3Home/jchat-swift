//
//  JCResaonCell.swift
//  JChat
//
//  Created by deng on 2017/5/25.
//  Copyright © 2017年 HXHG. All rights reserved.
//

import UIKit

class JCResaonCell: JCTableViewCell {
    
    var resaon: String? {
        get {
            return self.titleLabel.text
        }
        set {
            self.titleLabel.text = newValue
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        _init()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        _init()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        _init()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    private lazy var titleLabel: UILabel = UILabel()
    
    private func _init() {
        titleLabel.font = UIFont.systemFont(ofSize: 14)
        titleLabel.textColor = UIColor(netHex: 0x999999)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
    
        addSubview(titleLabel)

        addConstraint(_JCLayoutConstraintMake(titleLabel, .centerY, .equal, contentView, .centerY))
        addConstraint(_JCLayoutConstraintMake(titleLabel, .left, .equal, contentView, .left, 15))
        addConstraint(_JCLayoutConstraintMake(titleLabel, .right, .equal, contentView, .right, -15))
        addConstraint(_JCLayoutConstraintMake(titleLabel, .height, .equal, nil, .notAnAttribute, 20))
    }
    
}
