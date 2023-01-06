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
    @IBOutlet var alphaValue: UILabel!
    @IBOutlet var alphaSlider: UISlider!
    
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
        
        // Initial color setup for viewScreen label
        viewScreen.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1)
        viewScreen.layer.cornerRadius = 12
        
        // Initial setup for alphaSlider
        alphaSlider.value = 1
        alphaValue.text = String(Int(alphaSlider.value * 100)) + "%"
    }
    
    @IBAction func redSliderAction(_ sender: UISlider) {
        redValue.text = String(Int(sender.value))
        setupColor()
    }
    
    @IBAction func greenSliderAction(_ sender: UISlider) {
        greenValue.text = String(Int(sender.value))
        setupColor()
    }
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
        blueValue.text = String(Int(sender.value))
        setupColor()
    }
    
    
    @IBAction func alphaSliderAction(_ sender: UISlider) {
        alphaValue.text = String(Int(alphaSlider.value * 100)) + "%"
        setupColor()
        
    }
    
    func setupColor() {
        viewScreen.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: CGFloat(alphaSlider.value))
    }
    
}

