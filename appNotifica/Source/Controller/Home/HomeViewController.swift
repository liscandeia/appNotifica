//
//  HomeViewController.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-25 on 24/11/23.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {

    lazy var viewHome:HomeView = {
        let homeView = HomeView()

        return homeView
    }()
    
    override func loadView() {
        self.view = viewHome;
    }
    override func viewDidLoad() {
            super.viewDidLoad();
            self.title = "Home"; //self. e opcional
            self.navigationController?.navigationBar.prefersLargeTitles = true;
    }
}
