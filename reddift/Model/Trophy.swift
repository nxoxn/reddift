//
//  Trophy.swift
//  reddift
//
//  Created by sonson on 2015/11/13.
//  Copyright © 2015年 sonson. All rights reserved.
//

import Foundation

/**
 Trophy object
 */
public struct Trophy : Thing {
    /// identifier of Thing like 15bfi0.
    public var id:String
    /// name of Thing, that is fullname, like t3_15bfi0.
    public var name:String
    /// type of Thing, like t3.
    static public let kind = "t6"
    
    /// Trophy data
    public var title:String
    public var description:String
    public var awardID:String
    public var icon40:NSURL?
    public var icon70:NSURL?
    public var url:NSURL?
    
    public init(id:String) {
        self.id = id
        self.name = "\(Comment.kind)_\(self.id)"
        self.title = ""
        self.description = ""
        self.awardID = ""
        self.icon40 = nil
        self.icon70 = nil
        self.url = nil
    }
    
    public init(data:JSONDictionary) {
        id = data["id"] as? String ?? ""
        name = "\(Trophy.kind)_\(id)"
        awardID = data["award_id"] as? String ?? ""
        description = data["description"] as? String ?? ""
        icon40 = NSURL(string: (data["icon_40"] as? String ?? ""))
        icon70 = NSURL(string: (data["icon_70"] as? String ?? ""))
        url = NSURL(string: (data["url"] as? String ?? ""))
        title = data["name"] as? String ?? ""
    }
}