#!/bin/bash
if [ -n "$1" ];then 
	dtime=`date '+%Y-%m-%d %H:%M'`
	ndate=`date +%Y-%m-%d`
	num=$(date +%s)
	file_name="${ndate}-jhfnetboy-blog${num}.markdown"
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
