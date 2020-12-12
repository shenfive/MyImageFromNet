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
        
        if let url = URL(string: imageUrlString){
            do {
                let data = try Data(contentsOf: url)
                theImageView.image = UIImage(data: data)
            } catch {
                print(error.localizedDescription)
            }
        }
        
        
    }


}

