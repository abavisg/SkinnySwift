//
//  UITextField.swift
//  SkinnySwift
//
//  Created by Georgios Ampavis on 30/06/16.
//  Copyright © 2016 Georgios Ampavis. All rights reserved.
//

import UIKit

public extension UITextField {

	public func empty() -> Bool {
		let stripped = self.text?.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
		if let _ = stripped where !stripped!.isEmpty {
			return false
		} else {
			return true
		}
	}

}
