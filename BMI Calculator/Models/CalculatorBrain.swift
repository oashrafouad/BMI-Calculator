import Foundation

struct CalculatorBrain
{
    
    var bmi: Float = 0.0
    
    mutating func calculateBmi(height: Float, weight: Int)
    {
        bmi = Float(weight) / (height * height)
        bmi = round(bmi * 10) / 10
    }
    
    func getBmiValue() -> Float
    {
        return bmi
    }
}
