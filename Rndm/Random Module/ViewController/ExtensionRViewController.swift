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
        cell.setTitlesAndDescriptions(indexPath: indexPath)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let w: CGFloat = indexPath.section == 0 ? GConstants.largeCardWidth : GConstants.mediumCardWidth
        let h: CGFloat = indexPath.section == 0 ? GConstants.largeCardHeight : GConstants.mediumCardHeight
        return CGSize(width: w, height: h)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let sectionHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: RHeaderView.identifier, for: indexPath) as! RHeaderView
        sectionHeader.sectionHeaderlabel.text = RCardTitles.sectionTitles[indexPath.section]
        if indexPath.section == 0 { sectionHeader.sectionHeaderlabel.isHidden = true }
        
        return sectionHeader
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: section == 0 ? 0.1 :  60)
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, at indexPath: IndexPath) {
        if let section = sectionStack.last, section > indexPath.section {
            sectionStack.insert(indexPath.section, at: 0)
        } else {
            sectionStack.append(indexPath.section)
        }
        
        self.tabBarController?.navigationItem.title = RCardTitles.sectionTitles[sectionStack.first ?? 0]
    }

    func collectionView(_ collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, at indexPath: IndexPath) {
        if let id = sectionStack.firstIndex(of: indexPath.section) {
            sectionStack.remove(at: id)
        }
        self.tabBarController?.navigationItem.title = RCardTitles.sectionTitles[sectionStack.first ?? RCardTitles.sectionTitles.count - 1]
    }
}
