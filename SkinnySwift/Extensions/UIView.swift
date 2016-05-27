//
//  UIView.swift
//  SkinnySwift
//
//  Created by Georgios Ampavis
//  Copyright © 2016 Georgios Ampavis. All rights reserved.
//

import Foundation

public extension UIView {

	public class func instantiateFromNib<T: UIView>(viewType: T.Type) -> T {

		return NSBundle.mainBundle().loadNibNamed(String(viewType), owner: nil, options: nil).first as! T
	}

	public class func instantiateFromNib() -> Self {
		return instantiateFromNib(self)
	}

	public class func initFromNib(withFrame frame: CGRect) -> Self {
		let view = instantiateFromNib(self)
		view.frame = frame
		return view
	}

}