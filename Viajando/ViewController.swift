//
//  ViewController.swift
//  Viajando
//
//  Created by Joan Wilson Oliveira on 06/09/22.
//

import UIKit
import HorizontalCalendar

class ViewController: UIViewController {
    let calendar: HorizontalCalendar = {
        let calendar = HorizontalCalendar()
        calendar.translatesAutoresizingMaskIntoConstraints = false
        return calendar
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(calendar)
        constraintts()
    }
    
    func constraintts() {
        NSLayoutConstraint.activate([
            calendar.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 5),
            calendar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calendar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calendar.heightAnchor.constraint(equalToConstant: 170)
        ])
    }

}
