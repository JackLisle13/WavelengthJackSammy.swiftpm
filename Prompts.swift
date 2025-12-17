//
//  File.swift
//  WavelengthJackSammy
//
//  Created by JACKSON LISLE on 12/10/25.
//

import Foundation

class Prompts: Equatable, Hashable{
    
    
    //first ones go on the left, second go on the right
    var prompts: [[String]] = [
        ["Hot", "Cold"],
        ["Very Illegal", "Perfectly Legal"],
        ["Underrated", "Overrated"],
        ["Normal Thing to Do", "Unhinged Thing to Do"],
        ["Basic", "Unique"],
        ["Safe", "Dangerous"],
        ["Fun", "Boring"],
        ["Soft", "Hard"],
        ["Easy", "Difficult"],
        ["Laid Back", "Serious"],
        ["Predictable", "Unexpected"],
        ["Essential", "Unnecessary"],
        ["Common", "Rare"],
        ["Traditional", "Modern"],
        ["Low Quality", "High Quality"],
        ["Weak", "Strong"],
        ["Short-Term", "Long-Term"],
        ["Healthy", "Unhealthy"],
        ["Bland", "Flavorful"],
        ["Cheap", "Expensive"],
        ["Light", "Heavy"],
        ["Snacks", "Meals"],
        ["Introverted", "Extroverted"],
        ["Responsible", "Reckless"],
        ["Calm", "Emotional"],
        ["Polite", "Rude"],
        ["Private", "Open"],
        ["Low Effort", "High Effort"],
        ["Accessible", "Exclusive"],
        ["Relaxing", "Stressful"],
        ["Lighthearted", "Serious"],
        ["Niche", "Mainstream"],
        ["Predictable", "Twist-Filled"],
        ["Short", "Long"],
        ["Old", "New"],
        ["Fragile", "Durable"],
        ["Basic", "Advanced"],
        ["Tiny", "Huge"],
        ["Portable", "Stationary"]
    ]
    var randomArray: [String]
    
    
    init() {
        randomArray = []
        randomArray = randomPrompt()
    }
    
     func randomPrompt() -> [String]{
        let n = Int.random(in: 0..<prompts.count)
        
        return prompts[n]
    }
    
    static func == (lhs: Prompts, rhs: Prompts) -> Bool {
           return lhs.randomArray == rhs.randomArray
       }//looked up to conform to equatable
    
    func hash(into hasher: inout Hasher) {
            hasher.combine(randomArray)
        }//looked up to make it hashable
    
}
