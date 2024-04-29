//
//  ViewController.swift
//  AutoLayoutCode
//
//  Created by katu on 26/04/2024.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createLayout()
        // Do any additional setup after loading the view.
    }
    
    func createLayout() {
        let superview = self.view
        
        let myLabel = UILabel()
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.text = "My Label"
        
        let myButton = UIButton()
        
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton.setTitle("My Button", for: UIControl.State.normal)
        myButton.backgroundColor = UIColor.blue
        
        superview?.addSubview(myLabel)
        superview?.addSubview(myButton)
        
        /*var myConstraint = NSLayoutConstraint (
            item: myLabel,
            attribute: NSLayoutConstraint.Attribute.centerY,
            relatedBy: NSLayoutConstraint.Relation.equal,
            toItem: superview,
            attribute: NSLayoutConstraint.Attribute.centerY,
            multiplier: 1.0,
            constant: 0
            )
        superview?.addConstraint(myConstraint)
        
        myConstraint = NSLayoutConstraint (
            item: myLabel,
            attribute: NSLayoutConstraint.Attribute.centerX,
            relatedBy: NSLayoutConstraint.Relation.equal,
            toItem: superview,
            attribute: NSLayoutConstraint.Attribute.centerX,
            multiplier: 1.0,
            constant: 0)
        superview?.addConstraint(myConstraint)
        
        myConstraint = NSLayoutConstraint (
            item: myButton,
            attribute: NSLayoutConstraint.Attribute.trailing,
            relatedBy: NSLayoutConstraint.Relation.equal,
            toItem: myLabel,
            attribute: NSLayoutConstraint.Attribute.leading,
            multiplier: 1.0,
            constant: -10)
        superview?.addConstraint(myConstraint)
        
        myConstraint = NSLayoutConstraint (
            item: myLabel,
            attribute: NSLayoutConstraint.Attribute.lastBaseline,
            relatedBy: NSLayoutConstraint.Relation.equal,
            toItem: myButton,
            attribute: NSLayoutConstraint.Attribute.lastBaseline,
            multiplier: 1.0,
            constant: 0)
        superview?.addConstraint(myConstraint)*/
        
        myLabel.centerXAnchor.constraint(equalTo: superview!.centerXAnchor).isActive=true
        myLabel.centerYAnchor.constraint(equalTo: superview!.centerYAnchor).isActive=true
        myButton.trailingAnchor.constraint(equalTo: myLabel.leadingAnchor, constant: -20).isActive=true
        myButton.lastBaselineAnchor.constraint(equalTo: myLabel.lastBaselineAnchor).isActive=true
    }
    
}

