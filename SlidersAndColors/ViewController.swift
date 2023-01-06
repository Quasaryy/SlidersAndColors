//
//  ViewController.swift
//  SlidersAndColors
//
//  Created by Yury on 06.01.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var viewScreen: UIView!
    @IBOutlet var blueValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var redValue: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Red slider settings
        redSlider.minimumTrackTintColor = .red
        redSlider.thumbTintColor = .red
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        redSlider.value = 50
        redValue.text = String(Int(redSlider.value))
        
        // MARK: Green slider settings
        greenSlider.minimumTrackTintColor = .green
        greenSlider.thumbTintColor = .green
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        greenSlider.value = 100
        greenValue.text = String(Int(greenSlider.value))
        
        // MARK: Blue slider settings
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.thumbTintColor = .blue
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        blueSlider.value = 150
        blueValue.text = String(Int(blueSlider.value))
    }
    
    @IBAction func redSliderAction(_ sender: UISlider) {
        redValue.text = String(Int(sender.value))
        viewScreen.backgroundColor = UIColor(red: CGFloat(sender.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1)
    }
    
    @IBAction func greenSliderAction(_ sender: UISlider) {
        greenValue.text = String(Int(sender.value))
        viewScreen.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1)
    }
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
        blueValue.text = String(Int(sender.value))
        viewScreen.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1)
    }
    
}

