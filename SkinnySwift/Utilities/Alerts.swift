//
//  Alerts.swift
//  abavisg-lib
//
//  Created by Georgios Ampavis
//  Copyright © 2016 Georgios Ampavis. All rights reserved.
//

import Foundation

public class Alerts {

	public class func showStandardAlert(atController controller: UIViewController,
		title: String,
		message: String,
		buttonTitle: String = "OK") {

			let alertController = UIAlertController(title: title, message: message, preferredStyle: .Alert)

			let defaultAction = UIAlertAction(title: buttonTitle, style: .Default) { (action) in

			}
			alertController.addAction(defaultAction)

			controller.presentViewController(alertController, animated: true) {

			}
	}

	public class func showStandardAlert(atController controller: UIViewController,
		title: String,
		message: String,
		leftButtonTitle: String,
		leftHandler: (() -> Void),
		rightButtonTitle: String,
		rightHandler: (() -> Void)) {

			let alertController = UIAlertController(title: title, message: message, preferredStyle: .Alert)

			let leftAction = UIAlertAction(title: leftButtonTitle, style: .Default) { (action) in
				leftHandler()
			}
			alertController.addAction(leftAction)

			let rightAction = UIAlertAction(title: rightButtonTitle, style: .Default) { (action) in
				rightHandler()
			}
			alertController.addAction(rightAction)

			controller.presentViewController(alertController, animated: true) {

			}
	}

}
