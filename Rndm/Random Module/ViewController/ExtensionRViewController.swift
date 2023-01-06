//
//  ExtensionRViewController.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 05.01.2023.
//

import UIKit


extension RViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return RConstanst.numberOfSections
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return RConstanst.numberOfItems[section]
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = rViewModels.collectionView.dequeueReusableCell(withReuseIdentifier: CardCell.identifier, for: indexPath) as! CardCell
        cell.setDesign(indexPath: indexPath)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let w: CGFloat = indexPath.section == 0 ? GConstants.largeCardWidth : GConstants.mediumCardWidth
        let h: CGFloat = indexPath.section == 0 ? GConstants.largeCardHeight : GConstants.mediumCardHeight
        return CGSize(width: w, height: h)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let sectionHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: RHeaderView.identifier, for: indexPath) as! RHeaderView
//        let sectionHeader = RHeaderView()
        sectionHeader.sectionHeaderlabel.text = RConstanst.sectionTitles[indexPath.section]
        
        return sectionHeader
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 60)
    }
}
