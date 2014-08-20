//
//  TableViewController.swift
//  swift-app
//
//  Created by Alex Cristea on 26/07/14.
//  Copyright (c) 2014 iOS NSAgora. All rights reserved.
//

import UIKit
import MapKit

enum StackActionTypeOptions: Int {
    case Cancel = 0
    case Push   = 1
    case Pop    = 2
}

class TableViewController: UITableViewController {

    private var actionSheet:UIActionSheet!
    private var stack:Stack<Double> = Stack()
    
    private let lastInsertedIndexPath:Array<NSIndexPath> = [NSIndexPath(forRow: 0, inSection: 0)];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        actionSheet = UIActionSheet(
            title: "Available actions on stack",
            delegate: self,
            cancelButtonTitle: "Cancel",
            destructiveButtonTitle: nil,
            otherButtonTitles: "Push random item", "Pop item"
        );
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.stack.count
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        var cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("RandomStackCell", forIndexPath: indexPath) as UITableViewCell
        
        var index:Int = stack.count - indexPath.row - 1
        var txt = "No value"
        if let randomDouble = self.stack[index] {
            txt = "\(randomDouble)"
        }

        cell.textLabel.text = txt
        return cell;
    }
    
    // MARK: - IBActions
    
    @IBAction func didPressActionButton(sender: AnyObject) {
        self.actionSheet.showInView(self.view);
    }
}

// MARK: - Extensions

extension TableViewController: UIActionSheetDelegate {
    func actionSheet(actionSheet: UIActionSheet!, clickedButtonAtIndex buttonIndex: Int) {
        switch buttonIndex {
            
        case StackActionTypeOptions.Push.toRaw():
            pushItem()
        case StackActionTypeOptions.Pop.toRaw():
            popItem()
        default:
            cancel()
        }
    }
    
    func pushItem() {
        var random:Double = Random.nextDoubleBetween(minValue: 1024, maxValue: 2048)
        
        self.stack.push(random)
        self.tableView.insertRowsAtIndexPaths(lastInsertedIndexPath, withRowAnimation:UITableViewRowAnimation.Fade)
    }
    
    func popItem() {
        if let _ = self.stack.pop() {
            self.tableView.deleteRowsAtIndexPaths(lastInsertedIndexPath, withRowAnimation:UITableViewRowAnimation.Fade)
        }
    }
    
    func cancel() {
        println("Cancel");
    }
}
