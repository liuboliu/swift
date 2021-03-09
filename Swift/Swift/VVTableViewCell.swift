//
//  VVTableViewCell.swift
//  Swifttest
//
//  Created by Apple on 2021/3/8.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class VVTableViewCell: UITableViewCell {
    var label :UILabel?
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        label = UILabel.init(frame: CGRect(x:30,y:10,width :100,height:40))
        self.contentView.addSubview(label ?? UIView.init())
        self.selectionStyle = .none
    }
   
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
