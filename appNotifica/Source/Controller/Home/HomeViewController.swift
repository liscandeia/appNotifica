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
    
    lazy var viewHome:HomeView = {
        let homeView = HomeView(viewModel: viewModel)

        return homeView
    }()
    
    override func loadView() {
        self.view = viewHome;
    }
    @objc
    func handleAdd(){
        viewModel.didTapAdd()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
            self.title = "Ocorrências"; //self. e opcional
        navigationItem.rightBarButtonItem = .init(title: "Add", style: .plain, target: self, action: #selector(handleAdd))

    }
}
