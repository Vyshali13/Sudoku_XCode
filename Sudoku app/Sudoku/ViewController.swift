//
//  ViewController.swift
//  Assignment
//
//  Created by Vaishali Kulkarni on 2016-10-05.
//  Copyright © 2016 Default Profile. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
                        UICollectionViewDataSource,
                        UICollectionViewDelegate,
                        UICollectionViewDelegateFlowLayout
{
    var row: Int = 0
    var column: Int = 0
    var IsSecondPuzzle : Bool = false
    private let sectionInsets = UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
    @IBOutlet weak var collectionView: UICollectionView!
    var pastrow: Int = 0
    var pastcolumn: Int = 0
    
    var data = DataModel(numItemsPerRow: 9, initialization: 0)
    
    var timer = NSTimer()
    
    @IBOutlet weak var mtime: UILabel!
    @IBOutlet weak var Time: UILabel!
    var counter = 0
    var minute = 00
    var state = 1
    
    
    
    
   
    
    private let itemsPerRow = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.50, target:self, selector: #selector(ViewController.updateFocusIfNeeded), userInfo: nil, repeats: true)
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"num.jpg")!)
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
     
        
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // how many items you want to show in its grid
    func collectionView(collectionView: UICollectionView,  numberOfItemsInSection section: Int) -> Int {
        collectionView.backgroundColor = UIColor.clearColor()
        return itemsPerRow*itemsPerRow
    }
    
    
    
    // create data
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("DataCell", forIndexPath: indexPath) as! SudokuCollectionViewCell
        var row, column : Int
       // var ref: Int = 0
        (row, column) = getlocation(indexPath)

        cell.backgroundColor = UIColor.whiteColor()
        cell.label.text = String(data.get_num(row, column: column))
        if cell.label.text == "0"
        {
            cell.label.hidden = true
            cell.backgroundColor = UIColor.yellowColor()
        }
        else
        {
            cell.label.hidden = false
        }
        
        
        return cell
}
    
    // specify cell size
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let paddingSpace = Int(sectionInsets.left) * itemsPerRow * 2
        let availableWidth = view.frame.width - CGFloat(paddingSpace)
        let widthPerItem = availableWidth / CGFloat(itemsPerRow)
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    
   // selection behaviour
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        // You can use indexPath to get "cell number x", or get the cell like:
       let cell = collectionView.cellForItemAtIndexPath(indexPath) as! SudokuCollectionViewCell
        (row, column) = getlocation(indexPath)
        pastrow = row
       pastcolumn = column
        //update model
        
    }
    
    func getlocation(indexPath: NSIndexPath) -> (row: Int, column: Int) {
        let row: Int = indexPath.row / itemsPerRow
        let column: Int = indexPath.row % itemsPerRow
        return (row, column)
    }
    func update(){
        
        Time.text = String(counter++)
        
        
        if counter == 60 {
            
            mtime.text = String(minute + 1)
            
            counter = 0
            
        }
        
        if counter == 60 {
            
            
            
        }
        //self.viewDidLoad()
        
    }

    
    @IBAction func click1(sender: AnyObject)
    {
       print (IsSecondPuzzle)
        if IsSecondPuzzle == true
       {
        if data.demoEnable[row][column] == true
        {
            data.set_num(row, column: column, value: 1)
        }
       }
       else if IsSecondPuzzle == false
       {
        if data.numsEnabled[row][column] == true
        {
           data.set_num(row, column: column, value: 1)
        }
       }
        collectionView.reloadData()
    }
    
    
    
    @IBAction func click2(sender: AnyObject) {
        
        print (IsSecondPuzzle)
        if IsSecondPuzzle == true
        {
            if data.demoEnable[row][column] == true
            {
                data.set_num(row, column: column, value: 2)
            }
        }
        else if IsSecondPuzzle == false
        {
            if data.numsEnabled[row][column] == true
            {
                data.set_num(row, column: column, value: 2)
            }
        }
        collectionView.reloadData()

    }
    
    @IBAction func click3(sender: AnyObject) {
        
        print (IsSecondPuzzle)
        if IsSecondPuzzle == true
        {
            if data.demoEnable[row][column] == true
            {
                data.set_num(row, column: column, value: 3)
            }
        }
        else if IsSecondPuzzle == false
        {
            if data.numsEnabled[row][column] == true
            {
                data.set_num(row, column: column, value: 3)
            }
        }
        collectionView.reloadData()
    }
    
    
    
    
    @IBAction func click4(sender: AnyObject) {
        
        print (IsSecondPuzzle)
        if IsSecondPuzzle == true
        {
            if data.demoEnable[row][column] == true
            {
                data.set_num(row, column: column, value: 4)
            }
        }
       else if IsSecondPuzzle == false
        {
            if data.numsEnabled[row][column] == true
           {
                data.set_num(row, column: column, value: 4)
           }
       }
        collectionView.reloadData()
    }
    
    
    
    
    
    @IBAction func click5(sender: AnyObject) {
        
        print (IsSecondPuzzle)
        if IsSecondPuzzle == true
        {
            if data.demoEnable[row][column] == true
            {
                data.set_num(row, column: column, value: 5)
            }
        }
        else if IsSecondPuzzle == false
        {
            if data.numsEnabled[row][column] == true
            {
                data.set_num(row, column: column, value: 5)
            }
        }
        collectionView.reloadData()

    }
    
    
    
    
    @IBAction func click6(sender: AnyObject) {
        
        print (IsSecondPuzzle)
        if IsSecondPuzzle == true
        {
            if data.demoEnable[row][column] == true
            {
                data.set_num(row, column: column, value: 6)
            }
        }
        else if IsSecondPuzzle == false
        {
            if data.numsEnabled[row][column] == true
            {
                data.set_num(row, column: column, value: 6)
            }
        }
        collectionView.reloadData()

    }
    
    @IBAction func click7(sender: AnyObject) {
        
        print (IsSecondPuzzle)
        if IsSecondPuzzle == true
        {
            if data.demoEnable[row][column] == true
            {
                data.set_num(row, column: column, value: 7)
            }
        }
        else if IsSecondPuzzle == false
        {
            if data.numsEnabled[row][column] == true
            {
                data.set_num(row, column: column, value: 7)
            }
        }
        collectionView.reloadData()
    }
    
    @IBAction func click8(sender: AnyObject) {
        
        print (IsSecondPuzzle)
        if IsSecondPuzzle == true
        {
            if data.demoEnable[row][column] == true
            {
                data.set_num(row, column: column, value: 8)
            }
        }
        else if IsSecondPuzzle == false
        {
            if data.numsEnabled[row][column] == true
            {
                data.set_num(row, column: column, value: 8)
            }
        }
        collectionView.reloadData()

    }
    
    
    
    @IBAction func click9(sender: AnyObject) {
        
        print (IsSecondPuzzle)
        if IsSecondPuzzle == true
        {
            if data.demoEnable[row][column] == true
            {
                data.set_num(row, column: column, value: 9)
            }
        }
        else if IsSecondPuzzle == false
        {
            if data.numsEnabled[row][column] == true
            {
                data.set_num(row, column: column, value: 9)
            }
        }
        collectionView.reloadData()

    }
    
    
    
    //@IBAction func sortClicked(sender: AnyObject)
   // {
     //   data.sortButton()
       // collectionView.reloadData()
    
    //}
    
    @IBAction func ShowAnswer(sender: UIButton)
    {
        if IsSecondPuzzle == false
        {
            data.nums = data.answer
            collectionView.reloadData()
        }
        else
        {
            data.nums = data.answer2
            collectionView.reloadData()
        }
    }
    
    @IBAction func CheckAnswer(sender: UIButton)
    {
        if(data.nums == data.answer){
            if IsSecondPuzzle == false {
                let alertController = UIAlertController(title: "SUDOKU", message:
                    "Yipee!! :)  ", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "Close", style: UIAlertActionStyle.Default,handler: nil))
                
                self.presentViewController(alertController, animated: true, completion: nil)
            }
        }
        else{
            if IsSecondPuzzle == false{
                let alertController = UIAlertController(title: "SUDOKU", message:
                    "Your Solution is wrong :(", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "Close", style: UIAlertActionStyle.Default,handler: nil))
                
                self.presentViewController(alertController, animated: true, completion: nil)
            }
        }
            if(data.nums == data.answer2){
                if IsSecondPuzzle == true{
                let alertController = UIAlertController(title: "SUDOKU", message:
                    "Yayy!! :)", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "Close", style: UIAlertActionStyle.Default,handler: nil))
                
                self.presentViewController(alertController, animated: true, completion: nil)
                }
            }
            else{
                if IsSecondPuzzle == true {
                let alertController = UIAlertController(title: "SUDOKU", message:
                    "Incorrect Solution ", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "Close", style: UIAlertActionStyle.Default,handler: nil))
                
                self.presentViewController(alertController, animated: true, completion: nil)
                }
            }
    }

    @IBAction func NextPuzzle(sender: UIButton)
    {
        data.nums = data.demo
        collectionView.reloadData()
        if IsSecondPuzzle == false
        {
            IsSecondPuzzle = true
            var disableMyButton = sender as? UIButton
            disableMyButton!.enabled = false

            
        }
        else
        {
            //button disabled
            var disableMyButton = sender as? UIButton
            disableMyButton!.enabled = false
        }
        
    }
    
  
    @IBAction func Reset(sender: AnyObject) {
        
        data.get_Question()
        collectionView.reloadData()
    }
    
    @IBAction func Undo(sender: AnyObject) {
        
        data.set_num(row, column: column, value: 0)
        collectionView.reloadData()

    }
    
    @IBAction func Exit(sender: AnyObject) {
       
            exit(0)
        }

        
   
    
    
}





