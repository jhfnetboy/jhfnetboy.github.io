---
layout: post
title: How to using shell to create a white post in github blog which create by Jekyll tool
date: 2016-08-24 15:29
author: jhfnetboy
comments: true
categories: [Creative_Innovation]
---
#!/bin/bash
if [ -n "$1" ];then 
	dtime=`date '+%Y-%m-%d %H:%M'`
	ndate=`date +%Y-%m-%d`
	file_name="${ndate}-jhfnetboy-blog.markdown"
	echo $file_name
	touch $file_name
echo "---
layout: post
title: ${1}
date: ${dtime}
author: jhfnetboy
comments: true
categories: [Creative_Innovation]
---">>$file_name

else
	echo "Pls input like ./new_post.sh \"your post title\""
fi
