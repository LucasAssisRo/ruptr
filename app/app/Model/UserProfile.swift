//
//  UserProfile.swift
//  App
//
//  Created by Lucas Assis Rodrigues on 10/12/2017.
//  Copyright © 2017 Apple Dev Academy. All rights reserved.
//

//whatever

import ConnectivityServices

public class UserProfile: ProfileRequirements {
    
    private let _id: String
    private var _userName: String
    private var _avatar: String
    private var _moods: [Mood]
    private var _status: Status

    public var id: String {
        get {
            
            return self._id
        }
    }
    
    public var userName: String {
        get {
            
            return self._userName
        }
        
        set(userName) {
            self._userName = userName
        }
    }
    
    public var avatar: String {
        get {
            
            return self._avatar
        }
        
        set(avatar) {
            
            self._avatar = avatar
        }
    }
    
    public var moods: [Mood] {
        get {
            
            return self._moods
        }
        
        set(moods) {
            
            self._moods = moods
        }
    }
    
    public var status: Status {
        get {
            
            return self._status
        }
        
        set(status) {
            
            self._status = status
        }
    }
    
    public init(id: String, userName: String, avatar: String, moods: [Mood], status: Status) {
        self._id = id
        self._userName = userName
        self._avatar = avatar
        self._moods = moods
        self._status = status
    }
}

public extension String {
    
    public static func randomAlphaNumericString(length: Int) -> String {
        
        let allowedChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_"
        var randomString = ""
        
        for _ in 0..<length {
            let randomNum = Int(arc4random_uniform(UInt32(allowedChars.count)))
            let randomIndex = allowedChars.index(allowedChars.startIndex, offsetBy: randomNum)
            let newCharacter = allowedChars[randomIndex]
            randomString += String(newCharacter)
        }
        
        return randomString
    }
}
