import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

    var heightInCentimetres = 0
    var heightInMetres: Float = 0.0
    var weight = 0
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heightInCentimetres = Int(heightSlider.value)
        heightInMetres = Float(heightInCentimetres) / 100
        weight = Int(weightSlider.value)
        
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        // Cast weight slider value to an Int so the numbers after the decimal point are dropped and the value is converted to a whole number
        heightInCentimetres = Int(sender.value)
        heightLabel.text = "\(String(heightInCentimetres)) cm"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        // Cast weight slider value to an Int so the numbers after the decimal point are dropped and the value is converted to a whole number
        weight = Int(sender.value)
        weightLabel.text = "\(String(weight)) kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        heightInMetres = Float(heightInCentimetres) / 100
        
        calculatorBrain.calculateBmi(height: heightInMetres, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"
        {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBmiValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}
