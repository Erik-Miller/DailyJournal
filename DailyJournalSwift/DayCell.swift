//
//  DayCell.swift
//  DailyJournalSwift
//
//  Created by Erik Miller on 3/10/20.
//  Copyright © 2020 Erik Miller. All rights reserved.
//

import UIKit

class DayCell: UICollectionViewCell {
    
    private var dayLabel: UILabel!
    private var dateLabel: UILabel!
    
}

private extension DayCell {
    func initialize() {
        dayLabel = UILabel()
        dayLabel.textAlignment = .center
        dayLabel.font = .systemFont(ofSize: 12)
        dayLabel.textColor = .systemGray6
        dayLabel.text = "Mon"
        
        dateLabel = UILabel()
        dateLabel.textAlignment = .center
        dateLabel.font = .systemFont(ofSize: 16)
        dateLabel.textColor = .systemTeal
        dateLabel.text = "20"
        
        let vStack = UIStackView(arrangedSubviews: [dayLabel, dateLabel])
        vStack.translatesAutoresizingMaskIntoConstraints = false
        vStack.axis = .vertical
        vStack.alignment = .center
        vStack.distribution = .equalCentering
        
        
        contentView.addSubview(vStack)
        
        NSLayoutConstraint.activate([
            vStack.topAnchor.constraint(equalTo: contentView.topAnchor),
            vStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            vStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            vStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
}
