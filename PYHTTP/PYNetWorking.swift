//
//  DiscoverVC.swift
//  WeChatMVC
//
//  Created by PromeYang on 16/3/25.
//  Copyright © 2016年 PromeYang. All rights reserved.
//

import UIKit

class DiscoverVC: UITableViewController {
    
    @IBOutlet weak var FriendsMoment: UITableViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let parameters=[
            "terminal_code":12345678,
            "timestamp":1234567890,
            "platform":4,
            "session_key":"11",
            "app_versions":"0.0.1",
            "data":["a":"b"]
        ]
//        PYHTTP.Request("http://120.76.72.127:60011/api/webpos/common/login.do", parameters: parameters, completionHandler: { response in
//            print(response.status)
//            
//        })
        
        PYHTTP.GET("http://120.76.72.127:60011/api/webpos/common/login.do", parameters: parameters, sync: nil, completionHandler: { response in
            
        })
        
        PYHTTP.GET("http://uedfe.yypm.com/mockservice/?id=moment&folder=WX", completionHandler: { response in
            print(response.data)
        })
        
//        PYHTTP.Request("http://uedfe.yypm.com/mockservice/?id=moment&folder=WX", parameters: nil, completionHandler: { response in
//            
//        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        if FriendsMoment == cell {
            let FriendsMomentVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("FriendsMomentVC")
            self.navigationController?.pushViewController(FriendsMomentVC, animated: true)
        }
    }

}
