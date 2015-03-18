//
//  String + Path.swift
//  String + Path
//
//  Created by Joanna on 15/3/18.
//  Copyright (c) 2015年 Joanna. All rights reserved.
//

import Foundation

extension String {
    
    func documentPath() -> String {
        
        let path = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true).last as! String
        
        return path.stringByAppendingPathComponent(self)
    }
    
    func cachePath() -> String {
        
        let path = NSSearchPathForDirectoriesInDomains(.CachesDirectory, .UserDomainMask, true).last as! String
        
        return path.stringByAppendingPathComponent(self)
    }
    
    func tempPath() -> String {
        
        let path = NSTemporaryDirectory()
        return path.stringByAppendingPathComponent(self)
    }
    
}
