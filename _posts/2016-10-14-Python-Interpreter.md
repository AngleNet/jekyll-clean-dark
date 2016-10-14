---
layout: post
title: Python Interpreter Internals
date: 2016-10-14
tags: Language 
description: I used a lot Python in my daily work dealing with data analysis. I always wonder why it is so slow. Reading its source code helps me find the answer that it is just slow since there are a lot of work to do. Ha Ha Ha ....
---
### Internals

#### GIL

If you worked along with python and C ever, you may familiar with it. The mechanism used by the CPython interpreter to assure that only one thread executes Python bytecode at a time. This simplifies the CPython implementation by making the object model (including critical built-in types such as dict) implicitly safe against concurrent access. Locking the entire interpreter makes it easier for the interpreter to be multi-threaded, at the expense of much of the parallelism afforded by multi-processor machines. 

GIL must be held by the current thread before it can safely access Python objects. The interpreter regularly tries to switch threads. The lock is also released around potential blocking I/O operations.

### About reading Cpython source code 

### Resources

* [Official Python/C API references](https://docs.python.org/3/c-api/index.html)

	It explains much concepts used in the Cpython implementation and why they doing it that way.
