//
//  ViewController.swift
//  Example1
//
//  Created by wl on 15/11/5.
//  Copyright © 2015年 wl. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, ParallaxHeaderViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setMyBackgroundColor(UIColor(red: 0/255.0, green: 130/255.0, blue: 210/255.0, alpha: 0))
        
        let imageView = UIImageView(frame: CGRectMake(0, 0, self.tableView.bounds.width, 100))
        imageView.image = UIImage(named: "ba1ec0437cc8d5367a516ff69b01ea89")
        imageView.contentMode = .ScaleAspectFill
        
        let heardView = ParallaxHeaderView(style: .Default, subView: imageView, headerViewSize: CGSizeMake(self.tableView.bounds.width, 100), maxOffsetY: -120, delegate: self)

        self.tableView.tableHeaderView = heardView
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")
        
        cell?.textLabel?.text = "test\(indexPath.row)"
        
        return cell!
    }
    
    override func scrollViewDidScroll(scrollView: UIScrollView) {
        let heardView = self.tableView.tableHeaderView as! ParallaxHeaderView
        heardView.layoutHeaderViewWhenScroll(scrollView.contentOffset)
        
    }
}

