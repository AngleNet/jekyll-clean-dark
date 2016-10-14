---
layout: post
title: Classifier
date: 2016-10-13 
tags: Machine-Learning
description: Linear classifiers, Perception Learning, Support Vector Machine, GD and SGD
---

### Overview ###
We use Machine Learning as a powerful tool to dicover patterns and make predictions. Model and statistics help us understand the "pattern". Optimization algorithm learns the "pattern". The most important part is data. Data drives everything else.
There are mainly 3 types of classifier, i.e Observer based, Generative model and Discriminative model. KNN is based on all of the instances. Bayes networks are generative model and decision trees are discriminative model. Also, I will explain some linear classification algorithms, I think that is the most interesting part of this blog.

### K-Nearst Neighbor

### Bayes Networks

### Dicision Tree

### Linear Classifiers

Linear classifier should divide the input space into a collection of regions via some hyperplanes since there may be multiple classes in the input space. 

* Find the Linear Boundaries

	1.Fit linear regression model to the class indicator variables, then the overlapping margin is what we want.So:
	
	$$\lbrace X:(\beta _{k0} - \beta_{l0}) + (\beta _{k} - \beta _{l})X = 0\rbrace$$
	
	We will get the linear boundary.
	
	2.Directly model the boundaries between the classes as linear seperating hyperplanes
	
	(d-1) dimensional hyperplanes(Also called perceptron):
	
	$$\lbrace X:\beta _0 + \beta _1 X_1 + \beta _2 X_2 = 0 \rbrace$$
	
	We define the boundary as:
	
	$$\lbrace \beta _0 + \beta ^TX = 0\rbrace$$
	
	For every point $X_0$ in the sample space, the distance from $X_0$ to the hyperplane is:
	
	$$d(\beta _0, \beta) = {\beta ^T(X - X_0) \over ||\beta||} $$
	
* Perceptron Learning Algorithm

	Idea: Minimize the risk of misclassification.
	I want the hyperplane could seperate as much samples as possible. Any mistake should hurt the objective function. So I define a risk function as:
	
	$$argmin \quad R(\beta _0, \beta) = \sum_{X \in M}L(\beta _0, \beta, X_i, y_i)$$
	
	$$where\; L(\beta _0, \beta, X_i, y_i) = \begin{cases}0, & \text{if  $y_i(\beta _0 + \beta ^TX) \ge 0$}  \\ -y_i(\beta _0 + \beta ^TX) & \text{otherwise} \end{cases}$$
	
	Where $M$ is the set of misclassified samples. There are two ways to solve this: Gradient descent and Stochastic gradient descent. I'm not going to talk about this here. If you are interested, step to [Overview of gradient descent including popular frameworks](http://sebastianruder.com/optimizing-gradient-descent/)
	
* Maximum Margin Classifier

* Support Vector Classifier

* Support Vector Machine





















	
