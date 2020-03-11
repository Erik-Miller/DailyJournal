//
//  EntryCell.swift
//  DailyJournalSwift
//
//  Created by Erik Miller on 3/10/20.
//  Copyright © 2020 Erik Miller. All rights reserved.
//

import UIKit

class EntryCell: UICollectionViewCell{
    private var entryType: UILabel!
    private var entryTitle: UILabel!
    private var entryTime: UILabel!
}

private extension EntryCell{
    func initialize() {
        entryType = UILabel()
        entryType.font = .systemFont(ofSize: 12)
        entryType.textColor = .systemGray6
        entryType.text = "Around Me"
        
        entryTitle = UILabel()
        entryType.font = .systemFont(ofSize: 16)
        entryType.textColor = .systemGray6
        entryType.text = "Avoided instagram and youtube for 12 hours straight"
        
        entryTime = UILabel()
        entryTime.font = .systemFont(ofSize: 12)
        entryTime.textColor = .systemGray6
        entryTime.text = "4:20am"
        
        let vStack = UIStackView(arrangedSubviews: [entryType, entryTitle, entryTime])
        vStack.translatesAutoresizingMaskIntoConstraints = false
        vStack.axis = .vertical
        vStack.alignment = .leading
        vStack.spacing = 6
        
        contentView.addSubview(vStack)
        
        NSLayoutConstraint.activate([
            vStack.topAnchor.constraint(equalTo: contentView.topAnchor),
            vStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            vStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            vStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
}
