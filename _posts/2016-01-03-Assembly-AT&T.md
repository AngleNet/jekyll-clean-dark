---
layout: post
title: AT&T Assembly Language 
date: 2016-01-03
tags: Language 
description: Language is always not a problem, but sometimes language indeed is the cause.
---

#### Introduction

When I take the operating system course, there are many situations where I have to deal with via assembly language. Unforturenately the assembly world has been messed up. No standards. It becomes machine related, assembler related, system related. For the sake of using *gcc* to compile my code, I write this note. Assembly language annoys me. 

#### 1. Procedure

```c
	void empty(int a, int b){
    }
	int main(){
    	empty(2, 3);
        int c = 2;
        int d = 3;
        c = d;
        d = c;
        return 0;
    }
``` 

When a program is loaded into memory, it starts from an *entry point*  to execute. The *entry point* is not `main()`. When `main()` is called. It will execute the following code until call `empty()` :

```
	pushl 	%ebp
    movl	%esp,	%ebp
    
    subl	$16, 	%esp
    movl	$3,		4(%esp)
    movl 	$2,		(%esp)
    call	empty
    movl	$2,		-4(%ebp)
    movl	$3,		-8(%ebp)
    	
```
