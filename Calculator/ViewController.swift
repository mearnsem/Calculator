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
        buttonZero.setTitle("0", forState: .Normal)
        buttonZero.setTitleColor(.blackColor(), forState: .Normal)
        buttonZero.titleLabel?.font = UIFont(name: "Arial", size: 30)
        
        buttonOne.backgroundColor = .lightGrayColor()
        buttonOne.setTitle("1", forState: .Normal)
        buttonOne.setTitleColor(.blackColor(), forState: .Normal)
        buttonOne.titleLabel?.font = UIFont(name: "Arial", size: 30)
        
        buttonTwo.backgroundColor = .lightGrayColor()
        buttonTwo.setTitle("2", forState: .Normal)
        buttonTwo.setTitleColor(.blackColor(), forState: .Normal)
        buttonTwo.titleLabel?.font = UIFont(name: "Arial", size: 30)
        
        buttonThree.backgroundColor = .lightGrayColor()
        buttonThree.setTitle("3", forState: .Normal)
        buttonThree.setTitleColor(.blackColor(), forState: .Normal)
        buttonThree.titleLabel?.font = UIFont(name: "Arial", size: 30)
        
        buttonFour.backgroundColor = .lightGrayColor()
        buttonFour.setTitle("4", forState: .Normal)
        buttonFour.setTitleColor(.blackColor(), forState: .Normal)
        buttonFour.titleLabel?.font = UIFont(name: "Arial", size: 30)
        
        buttonFive.backgroundColor = .lightGrayColor()
        buttonFive.setTitle("5", forState: .Normal)
        buttonFive.setTitleColor(.blackColor(), forState: .Normal)
        buttonFive.titleLabel?.font = UIFont(name: "Arial", size: 30)
        
        buttonSix.backgroundColor = .lightGrayColor()
        buttonSix.setTitle("6", forState: .Normal)
        buttonSix.setTitleColor(.blackColor(), forState: .Normal)
        buttonSix.titleLabel?.font = UIFont(name: "Arial", size: 30)
        
        buttonSeven.backgroundColor = .lightGrayColor()
        buttonSeven.setTitle("7", forState: .Normal)
        buttonSeven.setTitleColor(.blackColor(), forState: .Normal)
        buttonSeven.titleLabel?.font = UIFont(name: "Arial", size: 30)
        
        buttonEight.backgroundColor = .lightGrayColor()
        buttonEight.setTitle("8", forState: .Normal)
        buttonEight.setTitleColor(.blackColor(), forState: .Normal)
        buttonEight.titleLabel?.font = UIFont(name: "Arial", size: 30)
        
        buttonNine.backgroundColor = .lightGrayColor()
        buttonNine.setTitle("9", forState: .Normal)
        buttonNine.setTitleColor(.blackColor(), forState: .Normal)
        buttonNine.titleLabel?.font = UIFont(name: "Arial", size: 30)
        
        buttonDivide.backgroundColor = .orangeColor()
        buttonDivide.setTitle("%", forState: .Normal)
        buttonDivide.setTitleColor(.whiteColor(), forState: .Normal)
        buttonDivide.titleLabel?.font = UIFont(name: "Arial", size: 30)
        
        buttonMultiply.backgroundColor = .orangeColor()
        buttonMultiply.setTitle("x", forState: .Normal)
        buttonMultiply.setTitleColor(.whiteColor(), forState: .Normal)
        buttonMultiply.titleLabel?.font = UIFont(name: "Arial", size: 30)
        
        buttonSubtract.backgroundColor = .orangeColor()
        buttonSubtract.setTitle("-", forState: .Normal)
        buttonSubtract.setTitleColor(.whiteColor(), forState: .Normal)
        buttonSubtract.titleLabel?.font = UIFont(name: "Arial", size: 30)
        
        buttonAdd.backgroundColor = .orangeColor()
        buttonAdd.setTitle("+", forState: .Normal)
        buttonAdd.setTitleColor(.whiteColor(), forState: .Normal)
        buttonAdd.titleLabel?.font = UIFont(name: "Arial", size: 30)
        
        buttonEnter.backgroundColor = .greenColor()
        buttonEnter.setTitle("=", forState: .Normal)
        buttonEnter.setTitleColor(.whiteColor(), forState: .Normal)
        buttonEnter.titleLabel?.font = UIFont(name: "Arial", size: 30)
        
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
        
        //Display label Width, Height, & Constraints
        let displayLabelWidth = NSLayoutConstraint(item: displayLabel, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 1.0, constant: 0)
        let displayLabelHeight = NSLayoutConstraint(item: displayLabel, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.25, constant: 1)
        let displayLabelTop = NSLayoutConstraint(item: displayLabel, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 0)
        
        view.addConstraints([displayLabelWidth, displayLabelHeight, displayLabelTop])
        
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
        
        let buttonZeroBottomToViewBottom = NSLayoutConstraint(item: buttonZero, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonEnterBottomToViewBottom = NSLayoutConstraint(item: buttonEnter, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let buttonAddBottomToViewBottom = NSLayoutConstraint(item: buttonAdd, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        view.addConstraints([buttonZeroLeadingToViewLeading, buttonZeroTopToOneBottom, buttonZeroTrailingToEnterLeading, buttonEnterTopToThreeBottom, buttonEnterTrailingToAddLeading, buttonAddTopToSubtractBottom, buttonAddTrailingToViewTrailing, buttonZeroBottomToViewBottom, buttonEnterBottomToViewBottom, buttonAddBottomToViewBottom])
        
        //Button Heights
        let buttonSevenHeight = NSLayoutConstraint(item: buttonSeven, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonEightHeight = NSLayoutConstraint(item: buttonEight, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonNineHeight = NSLayoutConstraint(item: buttonNine, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonDivideHeight = NSLayoutConstraint(item: buttonDivide, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonFourHeight = NSLayoutConstraint(item: buttonFour, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonFiveHeight = NSLayoutConstraint(item: buttonFive, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonSixHeight = NSLayoutConstraint(item: buttonSix, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonMultiplyHeight = NSLayoutConstraint(item: buttonMultiply, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonOneHeight = NSLayoutConstraint(item: buttonOne, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonTwoHeight = NSLayoutConstraint(item: buttonTwo, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonThreeHeight = NSLayoutConstraint(item: buttonThree, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonSubtractHeight = NSLayoutConstraint(item: buttonSubtract, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonZeroHeight = NSLayoutConstraint(item: buttonZero, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonEnterHeight = NSLayoutConstraint(item: buttonEnter, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonAddHeight = NSLayoutConstraint(item: buttonAdd, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        
        view.addConstraints([buttonSevenHeight, buttonEightHeight, buttonNineHeight, buttonDivideHeight, buttonFourHeight, buttonFiveHeight, buttonSixHeight, buttonMultiplyHeight, buttonOneHeight, buttonTwoHeight, buttonThreeHeight, buttonSubtractHeight, buttonZeroHeight, buttonEnterHeight, buttonAddHeight])
        
        //Button Widths
        let buttonSevenWidth = NSLayoutConstraint(item: buttonSeven, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonEightWidth = NSLayoutConstraint(item: buttonEight, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonNineWidth = NSLayoutConstraint(item: buttonNine, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonDivideWidth = NSLayoutConstraint(item: buttonDivide, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonFourWidth = NSLayoutConstraint(item: buttonFour, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonFiveWidth = NSLayoutConstraint(item: buttonFive, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonSixWidth = NSLayoutConstraint(item: buttonSix, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonMultiplyWidth = NSLayoutConstraint(item: buttonMultiply, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonOneWidth = NSLayoutConstraint(item: buttonOne, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonTwoWidth = NSLayoutConstraint(item: buttonTwo, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonThreeWidth = NSLayoutConstraint(item: buttonThree, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonSubtractWidth = NSLayoutConstraint(item: buttonSubtract, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonZeroWidth = NSLayoutConstraint(item: buttonZero, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.50, constant: 0)
        let buttonEnterWidth = NSLayoutConstraint(item: buttonEnter, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonAddWidth = NSLayoutConstraint(item: buttonAdd, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        
        view.addConstraints([buttonSevenWidth, buttonEightWidth, buttonNineWidth, buttonDivideWidth, buttonFourWidth, buttonFiveWidth, buttonSixWidth, buttonMultiplyWidth, buttonOneWidth, buttonTwoWidth, buttonThreeWidth, buttonSubtractWidth, buttonZeroWidth, buttonEnterWidth, buttonAddWidth])
   
    }
}






