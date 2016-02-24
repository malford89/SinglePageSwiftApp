//
//  Results.swift
//  SinglePageSwiftApp
//
//  Created by Michael Alford on 2/22/16.
//  Copyright © 2016 Michael Alford. All rights reserved.
//

import GameKit

class Results: NSObject {
    let results  = ["It is certain",
        "It is decidedly so",
        "Without a doubt",
        "Yes, definitely",
        "You may rely on it",
        "As I see it, yes",
        "Most likely",
        "Outlook good",
        "Yes",
        "Signs point to yes",
        "Reply hazy try again",
        "Ask again later",
        "Better not tell you now",
        "Cannot predict now",
        "Concentrate and ask again",
        "Don't count on it",
        "My reply is no",
        "My sources say no",
        "Outlook not so good",
        "Very doubtful"]
    
    func getRandomResult() -> String {
        let randomResult = GKRandomSource.sharedRandom().nextIntWithUpperBound(results.count)
        
        return results [randomResult]
    }
    
    
    
}

