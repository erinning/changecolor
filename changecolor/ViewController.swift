//
//  ViewController.swift
//  changecolor
//
//  Created by melon on 2018/12/4.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var gradationSlider: UISlider!
    @IBOutlet weak var layerSwitch: UISwitch!
    @IBOutlet weak var randomButton: UIButton!
    @IBOutlet weak var snowmanImageView: UIImageView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    @IBOutlet weak var layerLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func slideColorChanged(_ sender: UISlider) {
        snowmanImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        
        redLabel.text = String (format: "%.2f", redSlider.value)
        greenLabel.text = String (format: "%.2f", greenSlider.value)
        blueLabel.text = String (format: "%.2f", blueSlider.value)
        alphaLabel.text = String (format: "%.2f", alphaSlider.value)
    }
    
    
    @IBAction func graSliderChanged(_ sender: UISlider) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = backgroundImageView.bounds
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.yellow.cgColor]
        backgroundImageView.layer.addSublayer(gradientLayer)

    }
    @IBAction func layerChanged(_ sender: UISwitch) {
        let gradientLayer = CAGradientLayer()
        if layerSwitch.isOn == true {
            layerLabel.text = String("開")
            gradientLayer.frame = backgroundImageView.bounds
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.yellow.cgColor]
        backgroundImageView.layer.addSublayer(gradientLayer)
        }
        else {
            layerLabel.text = String("關")
    
        }
    }
    
    @IBAction func randomButtonPressed(_ sender: UIButton) {
        let red = Double.random(in: 0...1)
        let green = Double.random(in: 0...1)
        let blue = Double.random(in: 0...1)
        let alpha = Double.random(in: 0...1)
        
        snowmanImageView.backgroundColor = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(alpha))
        redSlider.value = Float(red)
        greenSlider.value = Float(green)
        blueSlider.value = Float(blue)
        alphaSlider.value = Float(alpha)
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        alphaLabel.text = String(format: "%.2f", alphaSlider.value)
    }
}
