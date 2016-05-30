//
//  ViewController.swift
//  Calculator
//
//  Created by Taylor Mott on 10/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    let displayLabel = UILabel()
    let buttonZero = UIButton()
    let buttonOne = UIButton()
    let buttonTwo = UIButton()
    let buttonThree = UIButton()
    let buttonFour = UIButton()
    let buttonFive = UIButton()
    let buttonSix = UIButton()
    let buttonSeven = UIButton()
    let buttonEight = UIButton()
    let buttonNine = UIButton()
    let buttonDivide = UIButton()
    let buttonMultiply = UIButton()
    let buttonSubtract = UIButton()
    let buttonAdd = UIButton()
    let buttonEnter = UIButton()
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButtons()
    }
    
    // MARK: - Functions
    
    func setupButtons() {
        displayLabel.backgroundColor = .blackColor()
        buttonZero.backgroundColor = .lightGrayColor()
        buttonOne.backgroundColor = .lightGrayColor()
        buttonTwo.backgroundColor = .lightGrayColor()
        buttonThree.backgroundColor = .lightGrayColor()
        buttonFour.backgroundColor = .lightGrayColor()
        buttonFive.backgroundColor = .lightGrayColor()
        buttonSix.backgroundColor = .lightGrayColor()
        buttonSeven.backgroundColor = .lightGrayColor()
        buttonEight.backgroundColor = .lightGrayColor()
        buttonNine.backgroundColor = .lightGrayColor()
        buttonDivide.backgroundColor = .orangeColor()
        buttonMultiply.backgroundColor = .orangeColor()
        buttonSubtract.backgroundColor = .orangeColor()
        buttonAdd.backgroundColor = .orangeColor()
        buttonEnter.backgroundColor = .greenColor()
        
        view.addSubview(displayLabel)
        view.addSubview(buttonZero)
        view.addSubview(buttonOne)
        view.addSubview(buttonTwo)
        view.addSubview(buttonThree)
        view.addSubview(buttonFour)
        view.addSubview(buttonFive)
        view.addSubview(buttonSix)
        view.addSubview(buttonSeven)
        view.addSubview(buttonEight)
        view.addSubview(buttonNine)
        view.addSubview(buttonDivide)
        view.addSubview(buttonMultiply)
        view.addSubview(buttonSubtract)
        view.addSubview(buttonAdd)
        view.addSubview(buttonEnter)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        displayLabel.translatesAutoresizingMaskIntoConstraints = false
        buttonZero.translatesAutoresizingMaskIntoConstraints = false
        buttonOne.translatesAutoresizingMaskIntoConstraints = false
        buttonTwo.translatesAutoresizingMaskIntoConstraints = false
        buttonThree.translatesAutoresizingMaskIntoConstraints = false
        buttonFour.translatesAutoresizingMaskIntoConstraints = false
        buttonFive.translatesAutoresizingMaskIntoConstraints = false
        buttonSix.translatesAutoresizingMaskIntoConstraints = false
        buttonSeven.translatesAutoresizingMaskIntoConstraints = false
        buttonEight.translatesAutoresizingMaskIntoConstraints = false
        buttonNine.translatesAutoresizingMaskIntoConstraints = false
        buttonDivide.translatesAutoresizingMaskIntoConstraints = false
        buttonMultiply.translatesAutoresizingMaskIntoConstraints = false
        buttonSubtract.translatesAutoresizingMaskIntoConstraints = false
        buttonAdd.translatesAutoresizingMaskIntoConstraints = false
        buttonEnter.translatesAutoresizingMaskIntoConstraints = false
        
        //Display label Width & Constraints
        let displayLabelWidth = NSLayoutConstraint(item: displayLabel, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 1.0, constant: 0)
        let displayLabelHeight = NSLayoutConstraint(item: displayLabel, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.25, constant: 1)
        let displayLabelLeading = NSLayoutConstraint(item: displayLabel, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        let displayLabelTop = NSLayoutConstraint(item: displayLabel, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 0)
        let displayLabelTrailing = NSLayoutConstraint(item: displayLabel, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        view.addConstraints([displayLabelWidth, displayLabelHeight, displayLabelLeading, displayLabelTop, displayLabelTrailing])
        
        //Button Row 1 Constraints
        let buttonSevenLeadingToViewLeading = NSLayoutConstraint(item: buttonSeven, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        let buttonSevenTopToDisplayBottom = NSLayoutConstraint(item: buttonSeven, attribute: .Top, relatedBy: .Equal, toItem: displayLabel, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonSevenTrailingToEightLeading = NSLayoutConstraint(item: buttonSeven, attribute: .Trailing, relatedBy: .Equal, toItem: buttonEight, attribute: .Leading, multiplier: 1.0, constant: 0)
        let buttonEightTopToDisplayBottom = NSLayoutConstraint(item: buttonEight, attribute: .Top, relatedBy: .Equal, toItem: displayLabel, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonEightTrailingToNineLeading = NSLayoutConstraint(item: buttonEight, attribute: .Trailing, relatedBy: .Equal, toItem: buttonNine, attribute: .Leading, multiplier: 1.0, constant: 0)
        let buttonNineTopToDisplayBottom = NSLayoutConstraint(item: buttonNine, attribute: .Top, relatedBy: .Equal, toItem: displayLabel, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonNineTrailingToDivideLeading = NSLayoutConstraint(item: buttonNine, attribute: .Trailing, relatedBy: .Equal, toItem: buttonDivide, attribute: .Leading, multiplier: 1.0, constant: 0)
        let buttonDivideTopToDisplayBottom = NSLayoutConstraint(item: buttonDivide, attribute: .Top, relatedBy: .Equal, toItem: displayLabel, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonDivideTrailingToViewTrailing = NSLayoutConstraint(item: buttonDivide, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        view.addConstraints([buttonSevenLeadingToViewLeading, buttonSevenTopToDisplayBottom, buttonSevenTrailingToEightLeading, buttonEightTopToDisplayBottom, buttonEightTrailingToNineLeading, buttonNineTopToDisplayBottom, buttonNineTrailingToDivideLeading, buttonDivideTopToDisplayBottom, buttonDivideTrailingToViewTrailing])
        
        //Button Row 2 Constraints
        let buttonFourLeadingToViewLeading = NSLayoutConstraint(item: buttonFour, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        let buttonFourTopToSevenBottom = NSLayoutConstraint(item: buttonFour, attribute: .Top, relatedBy: .Equal, toItem: buttonSeven, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonFourTrailingToFiveLeading = NSLayoutConstraint(item: buttonFour, attribute: .Trailing, relatedBy: .Equal, toItem: buttonFive, attribute: .Leading, multiplier: 1.0, constant: 0)
        let buttonFiveTopToEightBottom = NSLayoutConstraint(item: buttonFive, attribute: .Top, relatedBy: .Equal, toItem: buttonEight, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonFiveTrailingToSixLeading = NSLayoutConstraint(item: buttonFive, attribute: .Trailing, relatedBy: .Equal, toItem: buttonSix, attribute: .Leading, multiplier: 1.0, constant: 0)
        let buttonSixTopToNineBottom = NSLayoutConstraint(item: buttonSix, attribute: .Top, relatedBy: .Equal, toItem: buttonNine, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonSixTrailingToMultiplyLeading = NSLayoutConstraint(item: buttonSix, attribute: .Trailing, relatedBy: .Equal, toItem: buttonMultiply, attribute: .Leading, multiplier: 1.0, constant: 0)
        let buttonMultiplyTopToDivideBottom = NSLayoutConstraint(item: buttonMultiply, attribute: .Top, relatedBy: .Equal, toItem: buttonDivide, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonMultiplyTrailingToViewTrailing = NSLayoutConstraint(item: buttonMultiply, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        view.addConstraints([buttonFourLeadingToViewLeading, buttonFourTopToSevenBottom, buttonFourTrailingToFiveLeading, buttonFiveTopToEightBottom, buttonFiveTrailingToSixLeading, buttonSixTopToNineBottom, buttonSixTrailingToMultiplyLeading, buttonMultiplyTopToDivideBottom, buttonMultiplyTrailingToViewTrailing])
        
        //Button Row 3 Constraints
        let buttonOneLeadingToViewLeading = NSLayoutConstraint(item: buttonOne, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        let buttonOneTopToFourBottom = NSLayoutConstraint(item: buttonOne, attribute: .Top, relatedBy: .Equal, toItem: buttonFour, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonOneTrailingToTwoLeading = NSLayoutConstraint(item: buttonOne, attribute: .Trailing, relatedBy: .Equal, toItem: buttonTwo, attribute: .Leading, multiplier: 1.0, constant: 0)
        let buttonTwoTopToFiveBottom = NSLayoutConstraint(item: buttonTwo, attribute: .Top, relatedBy: .Equal, toItem: buttonFive, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonTwoTrailingToThreeLeading = NSLayoutConstraint(item: buttonTwo, attribute: .Trailing, relatedBy: .Equal, toItem: buttonThree, attribute: .Leading, multiplier: 1.0, constant: 0)
        let buttonThreeTopToSixBottom = NSLayoutConstraint(item: buttonThree, attribute: .Top, relatedBy: .Equal, toItem: buttonSix, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonThreeTrailingToSubtractLeading = NSLayoutConstraint(item: buttonThree, attribute: .Trailing, relatedBy: .Equal, toItem: buttonSubtract, attribute: .Leading, multiplier: 1.0, constant: 0)
        let buttonSubtractTopToMultiplyBottom = NSLayoutConstraint(item: buttonSubtract, attribute: .Top, relatedBy: .Equal, toItem: buttonMultiply, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonSubtractTrailingToViewTrailing = NSLayoutConstraint(item: buttonSubtract, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        view.addConstraints([buttonOneLeadingToViewLeading, buttonOneTopToFourBottom, buttonOneTrailingToTwoLeading, buttonTwoTopToFiveBottom, buttonTwoTrailingToThreeLeading, buttonThreeTopToSixBottom, buttonThreeTrailingToSubtractLeading, buttonSubtractTopToMultiplyBottom, buttonSubtractTrailingToViewTrailing])
        
        //Button Row 4 Constraints
        let buttonZeroLeadingToViewLeading = NSLayoutConstraint(item: buttonZero, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        let buttonZeroTopToOneBottom = NSLayoutConstraint(item: buttonZero, attribute: .Top, relatedBy: .Equal, toItem: buttonOne, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonZeroTrailingToEnterLeading = NSLayoutConstraint(item: buttonZero, attribute: .Trailing, relatedBy: .Equal, toItem: buttonEnter, attribute: .Leading, multiplier: 1.0, constant: 0)
        let buttonEnterTopToThreeBottom = NSLayoutConstraint(item: buttonEnter, attribute: .Top, relatedBy: .Equal, toItem: buttonThree, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonEnterTrailingToAddLeading = NSLayoutConstraint(item: buttonEnter, attribute: .Trailing, relatedBy: .Equal, toItem: buttonAdd, attribute: .Leading, multiplier: 1.0, constant: 0)
        let buttonAddTopToSubtractBottom = NSLayoutConstraint(item: buttonAdd, attribute: .Top, relatedBy: .Equal, toItem: buttonSubtract, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonAddTrailingToViewTrailing = NSLayoutConstraint(item: buttonAdd, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        view.addConstraints([buttonZeroLeadingToViewLeading, buttonZeroTopToOneBottom, buttonZeroTrailingToEnterLeading, buttonEnterTopToThreeBottom, buttonEnterTrailingToAddLeading, buttonAddTopToSubtractBottom, buttonAddTrailingToViewTrailing])
   
    }
}






