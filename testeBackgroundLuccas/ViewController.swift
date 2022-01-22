//
//  ViewController.swift
//  testeBackgroundLuccas
//
//  Created by Luccas Santana Marinho on 22/01/22.
//

import UIKit

class ViewController: UIViewController {
    init() {
        super.init(nibName: nil, bundle: nil)
        
        view = View(frame: UIScreen.main.bounds)
        view.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("duh")
    }
    
    func enterBG() {
        guard let v = view as? View else { return }
        v.viewOne.isHidden = true
        v.viewTwo.isHidden = false
    }
    
    func exitBG() {
        guard let v = view as? View else { return }
        v.viewOne.isHidden = false
        v.viewTwo.isHidden = true
    }
}

//MARK: ---

class View: UIView {
    let viewOne = UIView(frame: .zero)
    let viewTwo = UIView(frame: .zero)
    
    //MARK: ---
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(viewOne)
        addSubview(viewTwo)
    
        viewOne.translatesAutoresizingMaskIntoConstraints = false
        viewOne.backgroundColor = .orange
        viewOne.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        viewOne.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height).isActive = true
    
        //MARK: ---
    
        viewTwo.translatesAutoresizingMaskIntoConstraints = false
        viewTwo.backgroundColor = .green
        viewTwo.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        viewTwo.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height).isActive = true
    }
    
    //MARK: ---
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
