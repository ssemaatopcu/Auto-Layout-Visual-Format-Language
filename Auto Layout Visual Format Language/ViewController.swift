//
//  ViewController.swift
//  Auto Layout Visual Format Language
//
//  Created by Sema Topcu on 3/17/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.backgroundColor = .red
        label1.text = "THESE"
        label1.sizeToFit()
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = .cyan
        label2.text = "ARE"
        label2.sizeToFit()
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = .yellow
        label3.text = "SOME"
        label3.sizeToFit()
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = .green
        label4.text = "AWESOME"
        label4.sizeToFit()
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.backgroundColor = .orange
        label5.text = "LABELS"
        label5.sizeToFit()
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
        /* translatesAutoresizingMaskIntoConstraints to be false on each label, because by default iOS generates Auto Layout constraints for you based on a view's size and position. I will be doing it by hand, so I need to disable this feature */
        
        let viewsDictionary = ["label1": label1, "label2": label2, "label3": label3, "label4": label4, "label5": label5]
        
        for label in viewsDictionary.keys {
            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|",options: [], metrics: nil, views: viewsDictionary))
            /* NSLayoutConstraint.constraints(withVisualFormat:) is Auto Layout method that converts VFL into an array of constraints
             H: parts means that a horizontal layout. The pipe symbol, |, means "the edge of the view." "H:|[label1]|" means "horizontally, I want my label1 to go edge to edge in my view." */
        }
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1]-[label2]-[label3]-[label4]-[label5]", options: [], metrics: nil, views: viewsDictionary))
        /* V:, meaning that these constraints are vertical
         - symbol, which means "space". It's 10 points by default, but you can customize it
         */
    }


}

