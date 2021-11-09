//
//  ViewController.swift
//  RxswiftApp
//
//  Created by 泰山恭輔 on 2021/11/09.
//

import UIKit
import RxSwift
import RxCocoa


class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet weak var textField: UITextField!
    
    let disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.rx.text.orEmpty
        .bind(to: label.rx.text)
        .disposed(by: disposeBag)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

