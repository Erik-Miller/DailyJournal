//
//  ViewController.swift
//  DailyJournalSwift
//
//  Created by Erik Miller on 3/9/20.
//  Copyright © 2020 Erik Miller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var collectionView: UICollectionView!
    
    
}

extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
}

private extension ViewController {
    func initialize() {
        view.backgroundColor = .systemBackground
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                              heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                               heightDimension: .absolute(44))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,
                                                       subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.registerCollectionViewCell(DayCell.self)
        collectionView.registerCollectionViewCell(EntryCell.self)
        
        view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}
