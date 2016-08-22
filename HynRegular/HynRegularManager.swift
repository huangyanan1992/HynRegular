//
//  HynRegularManager.swift
//  HynRegular
//
//  Created by Huang Yanan on 16/8/22.
//  Copyright © 2016年 Huang Yanan. All rights reserved.
//

import Foundation


/** 几个常用的正则匹配
 * 1.mailPattern 匹配是否是邮箱
 * 2.userNamePattern 用户名
 * 3.passwordPattern 密码
 * 4.hexValuePattern 16进制
 * 5.slugPattern 用'-'连接的多词
 * 6.urlPattern 链接
 * 7.ipPattern ip地址
 */
let mailPattern = "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
let userNamePattern = "^[a-z0-9_-]{3,16}$"
let passwordPattern = "^[a-z0-9_-]{6,18}$"
let hexValuePattern = "^#?([a-f0-9]{6}|[a-f0-9]{3})$"
let slugPattern = "^[a-z0-9-]+$"
let urlPattern = "^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$"
let ipPattern = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"


struct RegexHelper {
    let regex: NSRegularExpression
    
    init(_ pattern: String) throws {
        try regex = NSRegularExpression(pattern: pattern,options: .CaseInsensitive)
    }
    
    func match(input:String) -> Bool {
        let matches = regex.matchesInString(input, options: [], range: NSMakeRange(0, input.characters.count))
        return matches.count > 0
    }
}

infix operator =~ {
    associativity none
    precedence 130
}

func =~(lhs:String, rhs:String) -> Bool {
    do {
        return try
            RegexHelper(rhs).match(lhs)
    } catch _ {
        return false
    }
}
