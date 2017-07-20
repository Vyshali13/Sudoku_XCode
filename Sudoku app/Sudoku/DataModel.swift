//
//  DataModel.swift
//  Assignment
//
//  Created by Vaishali Kulkarni on 2016-10-05.
//  Copyright © 2016 Default Profile. All rights reserved.
//

import Foundation
class DataModel
{
    var nums: [[Int]] = []
    var numsEnabled: [[Bool]] = []
    var demo: [[Int]] = []
    var demoEnable: [[Bool]] = []
   
    var answer: [[Int]] = []
    var answer2: [[Int]] = []
    var question: [[Int]] = []
    var questionCopy: [[Int]] = []
    
    init(numItemsPerRow: Int, initialization: Int) {
        nums = Array(count: numItemsPerRow, repeatedValue: Array(count: numItemsPerRow, repeatedValue: initialization))
        numsEnabled = Array(count: numItemsPerRow, repeatedValue: Array(count: numItemsPerRow, repeatedValue: false))
        demoEnable = Array(count: numItemsPerRow, repeatedValue: Array(count: numItemsPerRow, repeatedValue: false))
        get_Question()
        get_Answer()
        
        
    }
    func get_Question() -> Void {
        nums = [[0,0,1,9,0,3,0,0,0],
                [0,0,0,0,0,0,5,0,7],
                [3,0,0,2,0,0,0,0,0],
                [0,5,0,0,7,0,0,8,0],
                [0,0,9,0,0,0,0,0,3],
                [0,0,0,5,8,0,0,0,0],
                [1,0,0,0,0,0,0,0,0],
                [0,0,0,6,1,0,4,0,0],
                [8,0,0,0,0,0,0,2,5]]
        numsEnabled = [[true,true,false,false,true,false,true,true,true],
                        [true,true,true,true,true,true,false,true,false],
                        [false,true,true,false,true,true,true,true,true],
                        [true,false,true,true,false,true,true,false,true],
                        [true,true,false,true,true,true,true,true,false],
                        [true,true,true,false,false,true,true,true,true],
                        [false,true,true,true,true,true,true,true,true],
                        [true,true,true,false,false,true,false,true,true],
                        [false,true,true,true,true,true,true,false,false],
        ]
        question = nums
        questionCopy = nums
        
    demo = [[8,9,2,0,0,3,0,1,4],
                [0,0,0,0,0,0,0,0,0],
                [0,0,0,0,6,8,0,7,0],
                [4,5,0,0,8,0,0,0,1],
                [0,0,8,0,0,0,2,0,0],
                [1,0,3,7,0,0,5,0,0],
                [0,7,1,0,0,6,0,5,0],
                [5,0,9,2,0,0,0,8,0],
                [6,0,0,0,0,7,0,0,9]]
        demoEnable = [[false,false,false,true,true,false,true,false,false],
                      [true,true,true,true,true,true,true,true,true],
                      [true,true,true,true,false,false,true,false,true],
                      [false,false,true,true,false,true,true,true,false],
                      [true,true,false,true,true,true,false,true,true],
                      [false,true,false,false,true,true,false,true,true],
                      [true,false,false,true,true,false,true,false,true],
                      [false,true,false,false,true,true,true,false,true],
                      [false,true,true,true,true,false,true,true,false]
        ]
        
    }
    
    func get_Answer()
    {
           answer = [[5,7,1,9,4,3,8,6,2],
                [9,2,4,1,6,8,5,3,7],
                [3,6,8,2,5,7,9,1,4],
                [4,5,2,3,7,9,6,8,1],
                [6,8,9,4,2,1,7,5,3],
                [7,1,3,5,8,6,2,4,9],
                [1,4,5,8,9,2,3,7,6],
                [2,3,7,6,1,5,4,9,8],
                [8,9,6,7,3,4,1,2,5]]
        
        answer2 = [[8,9,2,5,7,3,6,1,4],
                    [7,4,6,9,2,1,8,3,5],
                    [3,1,5,4,6,8,9,7,2],
                    [4,5,7,6,8,2,3,9,1],
                    [9,6,8,1,3,5,2,4,7],
                    [1,2,3,7,4,9,5,6,8],
                    [2,7,1,8,9,6,4,5,3],
                    [5,3,9,2,1,4,7,8,6],
                    [6,8,4,3,5,7,1,2,9]]
    }
    
    
    
    func get_num(row:Int, column:Int) -> Int {
        return nums[row][column]
    }
    
    func set_num(row:Int, column:Int, value:Int) {
        nums[row][column] = value
    }
    func sortButton() -> Void
    {
        // populate grid with random numbersß
        
        for i in nums.indices {
            for j in nums.indices {
                nums[i][j] = Int(arc4random_uniform(9)+1)
                
            }
        }
        for i in nums.indices {
            nums[i].sortInPlace()
            
        }
    
    func requestion() -> Void {
        get_Question()
    }
    
}
    func get_data(row: Int, column:Int) -> Int {
        return questionCopy[row][column]
    }
}
