//
//  SwiftConstraints.swift
//  SwiftConstraints
//
//  Created by Mark Schultz on 6/4/14.
//  Copyright (c) 2014 QZero Labs, LLC. All rights reserved.
//

import UIKit

extension NSLayoutConstraint {
    
    class func constraintsThatFillWidthWithSubview(subview: UIView) -> NSLayoutConstraint[] {
        var constraints = NSLayoutConstraint[]()
        
        constraints += NSLayoutConstraint(item: subview,
            attribute: NSLayoutAttribute.Left,
            relatedBy: NSLayoutRelation.Equal,
            toItem: subview.superview,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1.0,
            constant: 0.0)
        
        constraints += NSLayoutConstraint(item: subview,
            attribute: NSLayoutAttribute.Right,
            relatedBy: NSLayoutRelation.Equal,
            toItem: subview.superview,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1.0,
            constant: 0.0)
        
        return constraints
    }
    
    class func constraintsThatFillHeightWithSubview(subview: UIView) -> NSLayoutConstraint[] {
        var constraints = NSLayoutConstraint[]()
        
        constraints += NSLayoutConstraint(item: subview,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: subview.superview,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1.0,
            constant: 0.0)
        
        constraints += NSLayoutConstraint(item: subview,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: subview.superview,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1.0,
            constant: 0.0)
        
        return constraints
    }
    
    class func constraintsThatFillSizeWithSubview(subview: UIView) -> NSLayoutConstraint[] {
        var constraints = NSLayoutConstraint[]()
        
        constraints += self.constraintsThatFillHeightWithSubview(subview)
        constraints += self.constraintsThatFillWidthWithSubview(subview)
        return constraints
    }
    
    convenience init(view: UIView, alignedWithOtherView otherView: UIView, onAttribute attribute: NSLayoutAttribute) {
        self.init(
            item: view,
            attribute: attribute,
            relatedBy: .Equal,
            toItem: otherView,
            attribute: attribute,
            multiplier: 1.0,
            constant: 0.0)
    }
    
    convenience init(subview: UIView, alignedWithSuperviewOnAttribute attribute: NSLayoutAttribute) {
        self.init(view: subview, alignedWithOtherView: subview.superview, onAttribute: attribute)
    }
    
    convenience init(horizontallyCenteredSubview subview: UIView) {
        self.init(subview: subview, alignedWithSuperviewOnAttribute: .CenterX)
    }
    
    convenience init(verticallyCenteredSubview subview: UIView) {
        self.init(subview: subview, alignedWithSuperviewOnAttribute: .CenterY)
    }
}
