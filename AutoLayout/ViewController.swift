//
//  ViewController.swift
//  AutoLayout
//
//  Created by getTrickS2 on 2/21/18.
//  Copyright © 2018 Nik's. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Variables ==============================
    let topImageContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let bearImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "bear"))
        // this enables autoLayout for our imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "Join us today in our fun and games!",
                                                       attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 18)])
        attributedText.append(NSAttributedString(string: "\n\nAre you ready loads and loads for fun? Don't wait any longer! We hope to see you in our stores soon.",
                                                 attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 13) ,
                                                              NSAttributedStringKey.foregroundColor : UIColor.gray]))
        textView.attributedText = attributedText
        // this enables autoLayout for our textView
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    // ================================================
    
    // MARK: - Functions ==============================
    func setupLayout() {
        // 1. Add constraints for topImageContainerView
        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        // 2. Add constreints for bearImageView
        bearImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        bearImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        bearImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5).isActive = true
        // 3. Add constreints fo descrioption for descriptionTextView
        descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    // ================================================
    
    // MARK: - Override functions =====================
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        topImageContainerView.addSubview(bearImageView)
        view.addSubview(topImageContainerView)
        view.addSubview(descriptionTextView)
        
        setupLayout()
    }
    // ================================================
    
}

