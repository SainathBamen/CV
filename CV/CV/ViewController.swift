//
//  ViewController.swift
//  CV
//
//  Created by Sainath Bamen on 28/03/23.
//

import UIKit

class ProductData2{
    let itemName:String
    let itemImage:String
    
    let price:Int
    init (iName:String, iImage:String, pPrice:Int){
        itemImage = iImage
        itemName = iName
        price =  pPrice
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionCV: UICollectionView!
    var itemList = [ProductData2]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillData()
        
        
    }
    
    private func fillData(){
        let item1 = ProductData2(iName: "olive", iImage: "men1", pPrice: 10)
        itemList.append(item1)
        let item2 = ProductData2(iName: "besan", iImage: "men2", pPrice: 20)
        itemList.append(item2)
        let item3 = ProductData2(iName: "haldi", iImage: "men3",  pPrice: 30)
        itemList.append(item3)
        let item4 = ProductData2(iName: "sunoil", iImage: "men4", pPrice: 40)
        itemList.append(item4)
        let item5 = ProductData2(iName: "fish oil", iImage: "men1", pPrice: 50)
        itemList.append(item5)
        
        
        
        
    }
}



extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionCV.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! NewCollectionViewCell
        cell.myImg.image = UIImage(named: itemList[indexPath.row].itemImage)
        cell.myLbl1.text = itemList[indexPath.row].itemName
        cell.myLbl2.text = String(itemList[indexPath.row].price)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        vc.mimeImage = UIImage(named: itemList[indexPath.row].itemImage)
        vc.mLabel = itemList[indexPath.row].itemName
        vc.mLabel2 = String(itemList[indexPath.row].price)
        print("\(itemList[indexPath.row])")
        //
        vc.price = itemList[indexPath.row].price
        self.navigationController?.pushViewController(vc, animated: true)

    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let size = (collectionCV.frame.size.width - 30)/2
//        return CGSize(width: size, height: size)
        let size = collectionCV.frame.size.width - 30/2
        return CGSize(width: size, height: size)
    }
    
    
}
