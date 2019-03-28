//
//  FactProvider.swift
//  FunFacts
//
//  Created by Hector Steven on 3/22/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

struct FunFact {
	let facts = ["France is the most visited country in the world",
				 "Surprisingly Australia is the most obese country in the world as of 2012 with a 26 percent obesity rate",
				 "There are no clocks in Las Vegas gambling casinos",
				 "Honolulu is the only place in the United States that has a royal palace",
				 "Spain is considered the most mountainous country in Europe and has over 8000 km of beaches",
				 "The United States has no official language", "One third of all the airports in the world are located in the US",
				 "Mexico City is sinking at a rate of 10cm per year, 10 x faster than Venice",
				 "Saudi Arabia is the only country in the world not to have any rivers",
				 "It has been rumored that the Great Wall can be seen from space, but in actual fact it can not"
	]
	
	///return randome fact from facts[]
	func randomFact () -> String {
		return facts.randomElement()!
	}
	
}

