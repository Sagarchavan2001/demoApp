//
//  ViewController.swift
//  DemoApp
//
//  Created by STC on 02/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var vc = UIStoryboard(name: "sheet", bundle: nil).instantiateViewController(withIdentifier: "sheetViewController")
    @IBOutlet weak var BankCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        BankCollectionView.delegate  = self
        BankCollectionView.dataSource = self
        regnib()
sheetPresent()
        
    }
    func regnib(){
        let nibname = UINib(nibName: "bankCollectionViewCell", bundle: nil)
        self.BankCollectionView.register(nibname, forCellWithReuseIdentifier: "bankCollectionViewCell")
    }
}
extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = BankCollectionView.dequeueReusableCell(withReuseIdentifier:"bankCollectionViewCell", for: indexPath) as! bankCollectionViewCell
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 1334, height: 300)
    }
    func sheetPresent(){
        if let sheet1 = vc.sheetPresentationController{
            sheet1.detents = [.custom(resolver: { context in 0.3 * context.maximumDetentValue}),.medium()]
            sheet1.prefersGrabberVisible = false
            sheet1.prefersScrollingExpandsWhenScrolledToEdge = true
            sheet1.largestUndimmedDetentIdentifier = .medium
        }
        
        self.present(vc, animated: true,completion: nil)
        
    }
    
    
}

