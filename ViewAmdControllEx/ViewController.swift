//
//  ViewController.swift
//  ViewAmdControllEx
//
//  Created by Eunchan Kim on 2022/10/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblHello: UILabel!
    
    @IBOutlet weak var segFan: UISegmentedControl!
    @IBOutlet weak var btnOk: UIButton!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet weak var sw: UISwitch!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblHello.text = "Hi"
        btnOk.titleLabel?.text = "Ok"
    }


    @IBAction func btn1(_ sender: Any) {
        lblHello.text = "btn1"
    }
    
    @IBAction func btn2(_ sender: Any) {
        lblHello.text = "btn2"
    }
    
    @IBAction func segFanChange(_ sender: Any) {
        print("\(segFan.selectedSegmentIndex) 선택")
        lblHello.text = "\(segFan.selectedSegmentIndex) 선택"
    }
    
    @IBAction func segFanChange2(_ sender: UISegmentedControl) {
        lblHello.text = "\(sender.selectedSegmentIndex)"
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        lblHello.text = "\(sw.isOn)"
    }
    
    @IBAction func stempperValueChanged(_ sender: UIStepper) {
        lblHello.text = "\(sender.value)"
    }
    
    @IBAction func actIndicator(_ sender: UIButton) {
        if indicator.isAnimating{
            indicator.stopAnimating()
            indicator.isHidden = true
        } else {
            indicator.startAnimating()
            indicator.isHidden = false
        }
    }
    
    @IBAction func pageChanged(_ sender: UIStepper) {
        pageControl.currentPage = Int(sender.value)
    }
}

