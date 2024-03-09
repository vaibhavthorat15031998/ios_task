//
//  ViewController.swift
//  DemoProjectNew
//
//  Created by MONO-HYD-MAC-23 on 07/03/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var profileImageBgView: UIView! {
        didSet {
            profileImageBgView.addBorder(color: UIColor.customBlueColor)
        }
    }
    @IBOutlet weak var homeTableView: UITableView!
    @IBOutlet weak var stkView: UIStackView! {
        didSet {
            stkView.addBorder(color: UIColor.customBlueColor)
        }
    }
    @IBOutlet weak var homeCollectionView: UICollectionView!
    @IBOutlet weak var xpProgressView: UIView! {
        didSet {
            xpProgressView.addBorder(color: UIColor.customBlueColor)
        }
    }
    @IBOutlet weak var xpLbl: UILabel! {
        didSet {
            xpLbl.addBorder(color: UIColor.customBlueColor)
        }
    }
    @IBOutlet weak var exploreBtnBgView: UIView! {
        didSet {
            exploreBtnBgView.addBorder(color: UIColor.white)
            exploreBtnBgView.addShadow()
        }
    }
    
    var goalsArr = [Goals]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        homeCollectionView.register(UINib(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HomeCollectionViewCell")
        homeTableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeTableViewCell")
        
        makeGoalsArr()
    }

    func makeGoalsArr() {
        goalsArr = [Goals(name: "Day 1: Physical Training", type: "Workout", coachName: nil, toalXp: 10, totalTime: 30), Goals(name: "Day 2: Steps To Recharge", type: "Meditation", coachName: "Coach - Muskaan", toalXp: 20, totalTime: 30)]
    }

}


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return goalsArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
        cell.assignData(data: goalsArr[indexPath.item])
        return cell
    }
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth = collectionView.frame.size.width
        let collectionHeight = collectionView.frame.size.height
        let size = CGSize(width: collectionWidth - 90, height: collectionHeight)
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}
