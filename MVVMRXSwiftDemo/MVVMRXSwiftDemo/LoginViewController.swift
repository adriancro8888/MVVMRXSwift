//
//  LoginViewController.swift
//  
//
//  Created by Shabir Jan on 04/02/2017.
//
//

import UIKit
import RxCocoa
import RxSwift
class LoginViewController: UIViewController {

    @IBOutlet weak var btnConfirm: UIButton!
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    var loginModel = LoginViewModel()
    var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        txtUsername.rx.text.bindTo(loginModel.username).addDisposableTo(disposeBag)
        txtPassword.rx.text.bindTo(loginModel.password).addDisposableTo(disposeBag)
        
        
        loginModel.isValid.map{$0}
        .bindTo(btnConfirm.rx.isEnabled).addDisposableTo(disposeBag)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
