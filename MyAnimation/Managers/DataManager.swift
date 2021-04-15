//
//  DataManager.swift
//  MyAnimation
//
//  Created by Vladislav on 17.06.2020.
//  Copyright © 2020 Vladislav Cheremisov. All rights reserved.
//

class DataManager {

    static let shared = DataManager()
    private init() {}
    
    let animationPresets = [
		"slideLeft",
		"slideRight",
		"slideDown",
		"slideUp",
		"squeezeLeft",
		"squeezeRight",
		"squeezeDown",
		"squeezeUp",
		"fadeIn",
		"fadeOut",
		"fadeOutIn",
		"fadeInLeft",
		"fadeInRight",
		"fadeInDown",
		"fadeInUp",
		"zoomIn",
		"zoomOut",
		"fall",
		"shake",
		"pop",
		"flipY",
		"morph",
		"squeeze",
		"flash",
		"wobble",
		"swing"
	]
    
    let curves = [
		"easeIn",
		"easeOut",
		"easeInOut",
		"linear",
		"spring",
		"easeInSine",
		"easeOutSine",
		"easeInOutSine",
		"easeInQuad",
		"easeOutQuad",
		"easeInOutQuad",
		"easeInCubic",
		"easeOutCubic",
		"easeInOutCubic",
		"easeInQuart",
		"easeOutQuart",
		"easeInOutQuart",
		"easeInQuint",
		"easeOutQuint",
		"easeInOutQuint",
		"easeInExpo",
		"easeOutExpo",
		"easeInOutExpo",
		"easeInCirc",
		"easeOutCirc",
		"easeInOutCirc",
		"easeInBack",
		"easeOutBack",
		"easeInOutBack"
	]
}
