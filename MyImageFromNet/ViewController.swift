//
//  ViewController.swift
//  MyImageFromNet
//
//  Created by 申潤五 on 2020/12/12.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var theImageView: UIImageView!
    
    @IBOutlet weak var containerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        containerView.clipsToBounds = false
        containerView.backgroundColor = UIColor.clear
        containerView.layer.shadowRadius = 20         //陰影
        containerView.layer.shadowOpacity = 0.6;
        containerView.layer.shadowColor = UIColor.gray.cgColor
        containerView.layer.shadowOffset = CGSize(width: 10, height: 10)

        
        theImageView.clipsToBounds = true
        theImageView.layer.cornerRadius = theImageView.frame.width / 2
        theImageView.layer.borderColor = UIColor.blue.cgColor
        theImageView.layer.borderWidth = 3
        
        let imageUrlString = "https://i3.read01.com/SIG=nlj5f4/304a366b324159533874.jpg"
        print("start:\(Date().timeIntervalSince1970)")
        if let url = URL(string: imageUrlString){
            DispatchQueue.global().async {
                do {
                    let data = try Data(contentsOf: url)
                    DispatchQueue.main.async {
                        self.theImageView.image = UIImage(data: data)
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
        print("end:\(Date().timeIntervalSince1970)")
        
    }


}

