import Foundation
import UIKit

struct CalculatorBrain
{
    
    var bmiObject: Bmi?
    
    mutating func calculateBmi(height: Float, weight: Int)
    {
        var bmiValue = Float(weight) / (height * height)
        bmiValue = round(bmiValue * 10) / 10
        
        var color: UIColor
        var advice: String
        
        if bmiValue < 18.5
        {
            advice = "Eat some more snacks!"
            color = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            bmiObject = Bmi(value: bmiValue, advice: advice, color: color)
        }
        else if bmiValue >= 18.5 && bmiValue <= 24.9
        {
            advice = "You're just right!"
            color = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            bmiObject = Bmi(value: bmiValue, advice: advice, color: color)
        }
        else if bmiValue > 24.9
        {
            advice = "Eat fewer snacks!"
            color = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
            bmiObject = Bmi(value: bmiValue, advice: advice, color: color)
        }
    }
    
    func getBmiValue() -> Float
    {
        // If bmiObject doesn't equal nil, then return the value of "value", else return a default value of 0.0
        return bmiObject?.value ?? 0.0
    }
    
    func getAdvice() -> String
    {
        // If bmiObject doesn't equal nil, then return the value of "advice", else return a default value of "No advice"
        return bmiObject?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor
    {
        // If bmiObject doesn't equal nil, then return the value of "color", else return a default value of UIColor.darkGray
        return bmiObject?.color ?? UIColor.darkGray
    }
}
