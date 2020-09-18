//
//  ViewController.swift
//  mvvmWithoutReactive
//
//  Created by 성준 on 2020/09/18.
//  Copyright © 2020 성준. All rights reserved.
//

import UIKit

class NumberTableViewCell:UITableViewCell{
    @IBOutlet weak var numberLabel:UILabel!
    
    var numberModel:NumberItemModel!{
        didSet{
            guard let model = numberModel else {return}
            numberLabel.text = "\(model.number)"
        }
    }
}

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView:UITableView!
    @IBOutlet weak var addButton:UIButton!
    
    private var viewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        binding()
    }
    
    func binding(){
        viewModel.numbers.bind { (numbers) in
            self.tableView.reloadData()
        }
    }

    @IBAction func addNumber(_ sender: Any) {
        viewModel.addNumber()
    }
    
    /**
     ? TableViewDatasource는 view에서 관리하는게 맞는걸까 ?
     */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numbers.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return viewModel.numbers.value[indexPath.row].cellInstance(tableView, indexPath: indexPath)
    }
}

