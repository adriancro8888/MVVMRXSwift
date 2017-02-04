//
//  LoginViewModel.swift
//  MVVMRXSwiftDemo
//
//  Created by Shabir Jan on 04/02/2017.
//  Copyright © 2017 Shabir Jan. All rights reserved.
//

import Foundation
import RxSwift

struct  LoginViewModel {
    var username = Variable<String>("")
    var password = Variable<String>("")
    
    var isValid : Observable<Bool>{
        return Observable.combineLatest(self.username.asObservable(), self.password.asObservable(), resultSelector: { (user, pass)  in
            return user.characters.count > 0 && pass.characters.count > 0
        })
    }
    
}
