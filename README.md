# HynRegular
##常用正则表达式的封装
    let mailPattern = "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
    let userNamePattern = "^[a-z0-9_-]{3,16}$"
    let passwordPattern = "^[a-z0-9_-]{6,18}$"
    let hexValuePattern = "^#?([a-f0-9]{6}|[a-f0-9]{3})$"
    let slugPattern = "^[a-z0-9-]+$"
    let urlPattern = "^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$"
    let ipPattern = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"
##useage
        if "1178848591@qq.com" =~ mailPattern {
            print("有效的邮箱地址")
        }
        
        if "https://github.com/huangyanan1992" =~ urlPattern {
            print("有效网址")
        }
        
        if "my-us3r_n4m3" =~ userNamePattern {
            print("有效用户名")
        }
        
        if "#a3c113" =~ hexValuePattern {
            print("16进制")
        }
        
        if "my-title-here" =~ slugPattern {
            print("slug")
        }
        
        if "http://www.jianshu.com/users/391939f53241/latest_articles" =~ urlPattern {
            print("有效url")
        }
        
        if "73.60.124.136" =~ ipPattern {
            print("有效ip")
        }
