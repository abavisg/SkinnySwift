//
//  CodeExecutionTimer.swift
//  SkinnySwift
//
//  Created by Georgios Ampavis
//  Copyright © 2016 Georgios Ampavis. All rights reserved.
//

import UIKit
import Foundation

public class CodeExecutionTimer {

	static var startTime: CFAbsoluteTime?
	static var endTime: CFAbsoluteTime?

	public class func start() {
		startTime = CFAbsoluteTimeGetCurrent()
        print("=========== TASK STARTED ==============")
	}

	public class func stop() -> CFAbsoluteTime {
		self.endTime = CFAbsoluteTimeGetCurrent()

		if let endTime = self.endTime {
            let duration:CFAbsoluteTime = endTime - self.startTime!
            print("The task took \(duration) seconds.")
            print("=========== TASK FINISHED ==============")
			return duration
		} else {
			return 0
		}
	}
}
