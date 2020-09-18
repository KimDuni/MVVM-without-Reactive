//
//  MainViewModel.swift
//  mvvmWithoutReactive
//
//  Created by 성준 on 2020/09/18.
//  Copyright © 2020 성준. All rights reserved.
//

import Foundation

class MainViewModel{
    
    var numbers = Dynamic([NumberItemModel(number: 0),NumberItemModel(number: 1),NumberItemModel(number: 2)])
    
    func addNumber(){
        numbers.value.append(NumberItemModel(number: numbers.value.count))
    }
}
