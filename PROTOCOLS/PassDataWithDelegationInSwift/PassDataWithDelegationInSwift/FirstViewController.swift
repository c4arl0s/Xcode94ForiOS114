//
//  ViewController.swift
//  PassDataWithDelegationInSwift
//
//  Created by Carlos Santiago Cruz on 03/11/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, PassDataDelegate {
    func finishPassingData(string: String) {
        print("notified")
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SecondViewController {
            destination.delegate = self
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func performSegueButtonTapped(_ sender: Any) {
    performSegue(withIdentifier: "goToSecondViewController", sender: nil)
    }
    

}

