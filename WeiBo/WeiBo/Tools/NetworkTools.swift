//
//  NetworkTools.swift
//  WeiBo
//
//  Created by 张宇 on 2018/2/5.
//  Copyright © 2018年 张宇. All rights reserved.
//

import UIKit
import AFNetworking

enum RequestType:String {
    case GET = "GET"
    case POST = "POST"
}

class NetworkTools: AFHTTPSessionManager {

    static let NetworkTool = NetworkTools()
    
   
    
}

//MARK:请求方法
extension NetworkTools{
    
    ///通用请求
    func request(requestType:RequestType,url:String,parameters:[String:AnyObject],calllBack:@escaping (_ result:Any?,_ error:Error?)->()){
     
        let successCallBack = { (task:URLSessionDataTask, result:Any?) in
            calllBack(result,nil)
        }
        
        let failureCallBack = { (task:URLSessionDataTask?, error:Error) in
            calllBack(nil,error)
        }
        
        if  requestType == .GET {
            get(url, parameters: parameters, progress: nil, success: successCallBack, failure: failureCallBack)
        } else {
            post(url, parameters: parameters, progress: nil, success: successCallBack, failure: failureCallBack)
        }
    }
    
    
}
