//
//  NumberItem.swift
//  mvvmWithoutReactive
//
//  Created by 성준 on 2020/09/18.
//  Copyright © 2020 성준. All rights reserved.
//

import Foundation
import UIKit

struct NumberItemModel:CellRepresentable{
    var rowHeight: CGFloat = 44
    var number:Int
    
    func cellInstance(_ tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "numberCell") as! NumberTableViewCell
        cell.numberModel = self
        return cell
    }
}
