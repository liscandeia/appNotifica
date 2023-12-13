//
//  HomeViewController.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 24/11/23.
//

import Foundation
import UIKit

class HomeViewController: ViewControllerDeafault{
    let viewModel: HomeViewModel
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var homeView:HomeView = {
        let homeView = HomeView(viewModel: viewModel)

        return homeView
    }()
    
    override func loadView() {
        self.view = homeView;
    }
    @objc
    func handleAdd(){
        viewModel.didTapAdd()
    }
    func refreshData (){
        viewModel.fetchData()
        homeView.tableView.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
            self.title = "Ocorrências";
        refreshData()
        navigationItem.rightBarButtonItem = .init(title: "Add", style: .plain, target: self, action: #selector(handleAdd))

    }
}
