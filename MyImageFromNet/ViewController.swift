//
//  ViewController.swift
//  MyImageFromNet
//
//  Created by 申潤五 on 2020/12/12.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var theImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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

