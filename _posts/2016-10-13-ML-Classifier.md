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

	Idea: Find the largest isolation band that seperates the classes. We hope that a classifier that has a large margin on the training data will also have a large margin on the test data. When the feature dimension is too large, it's easy to get overfitting.

	Then we get this:
	
	$$argmax _{(\beta,\; \beta _0)} \quad M$$

	$$s.t.\quad {y_i(X_i^T \beta+\beta _0) \over ||\beta||} \ge M $$
	
	When we set $M$ to ${1 \over ||\beta||}$, we get:
	
	$$argmin _{(\beta,\; \beta _0)} \quad ||\beta||$$

	$$s.t.\quad y_i(X_i^T \beta+\beta _0) \ge 1 $$
	
	We can do better:
	
	$$argmin _{(\beta,\; \beta _0)} \quad {1 \over 2}||\beta||^2$$

	$$s.t.\quad y_i(X_i^T \beta+\beta _0) \ge 1 $$
	
	It is a linear programming prolem. We solve this via Lagrangian Multiplier. The Lagrange function to be minimized w.r.t $\beta$ and $\beta _0$, is:
	
	$$Lp = {1 \over 2} ||\beta||^2 - \sum_{i=1}^N\alpha _i[y_i(x_i^T\beta + \beta _0) - 1]$$
	
	Setting the derivatives to zero, we obtain:
	
	$$\beta = \sum_{i=1}^N\alpha _i y_i x_i$$

	$$0 = \sum_{i=1}^N \alpha _i y_i$$
	
	We will try to solve this here.
	
	* Some Background
		1. Lagrange Dual
		
		$$argmin \quad f_D(x)$$

		$$s.t. \quad \begin{cases} f_i(x) \le 0 & i = 1, ..., m \\ h_i(x) = 0 &i = 1, ..., p\end{cases}$$

		$$L(x, \lambda, \nu) = f_0(x) + \sum_{i=1}^m\lambda _i f_i(x) + \sum_{i=1}^p \nu h_i(x)$$
		
		2. Lagrange dual function
		
		$$g(\lambda, \nu) = \inf_{X \in D}L(X, \lambda, \nu)$$

		$$argmin \quad L(x, \lambda, \nu) = f_0(x) + \sum_{i=1}^m\lambda _i f_i(x) + \sum_{i=1}^p \nu h_i(x)$$

		$$where \quad \lambda \gt 0$$
		
		Displeasure part: 
		
		$$f_i(x) \ge 0$$

		$$h_i(x) \ne 0$$
		
		Our displeasure grows as the constraint becomes "more violate". Here the great idea is that "Replacing hard constrains with soft versions".

		3. Conjugate function

		The conjugate function $f^*(y)$ is the maximum gap between the linear function $xy$ and $f(x)$. See Convex Optimization by Stephen Boyd Chapter 3.3

	* Solving details

		Get Wolfe dual: [Wolfe Dual Explaination](https://www.cs.rochester.edu/~gildea/2013_Spring/wolfe.pdf) and [Paper about lagrange and Wolf dual functions](https://arxiv.org/pdf/1506.04574.pdf)

		$$argmax \quad L_D = \sum_{i=1}^N\alpha _i - {1 \over 2}\sum_{i=1}^N\sum_{k=1}^N\alpha _i \alpha _k y_i y_k x_i^T x_k$$

		$$s.t. \quad \alpha _i \ge 0 \; \text{and} \; {dL \over dx} = 0$$

		The solution is obtained by maxmizing $L_D$ in the positive orthant.  A simpler convex optimization problem. Here the tricky part is we need to maxmizing $L_D$. That is because $L_D(\alpha)$ is a concave function.
	
* Support Vector Classifier

* Support Vector Machine





















	
