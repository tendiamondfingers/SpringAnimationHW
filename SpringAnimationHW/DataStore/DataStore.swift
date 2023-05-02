//
//  DataStore.swift
//  SpringAnimationHW
//
//  Created by Сергей Захаров on 02.05.2023.
//

import SpringAnimation

class DataStore {
    
    static let shared = DataStore()
    
    let presets = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
