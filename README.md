# Naive_Bayes_Classifier
A classification technique based on Bayes’ Theorem with an assumption of independence among predictors. In simple terms, a Naive Bayes classifier assumes that the presence of a particular feature in a class is unrelated to the presence of any other feature.<br>
For example, a fruit may be considered to be an apple if it is red, round, and about 3 inches in diameter. Even if these features depend on each other or upon the existence of the other features, all of these properties independently contribute to the probability that this fruit is an apple and that is why it is known as ‘Naive’.<br>
Naive Bayes model is easy to build and particularly useful for very large data sets. Along with simplicity, Naive Bayes is known to outperform even highly sophisticated classification methods.<br>
## Some Pros And Cons of this classifier are
* It is easy and fast to predict class of test data set. It also perform well in multi class prediction.
* When assumption of independence holds, a Naive Bayes classifier performs better compare to other models like logistic regression and you need less training data.
* It perform well in case of categorical input variables compared to numerical variable(s). For numerical variable, normal distribution is assumed (bell curve, which is a strong assumption).
* If categorical variable has a category (in test data set), which was not observed in training data set, then model will assign a 0 (zero) probability and will be unable to make a prediction. This is often known as “Zero Frequency”. To solve this, we can use the smoothing technique. One of the simplest smoothing techniques is called Laplace estimation.
* On the other side naive Bayes is also known as a bad estimator, so the probability outputs from predict_probability are not to be taken too seriously.
* Another limitation of Naive Bayes is the assumption of independent predictors. In real life, it is almost impossible that we get a set of predictors which are completely independent.

## Links
* [Data(There are two dataset here one is complex another is simple)](https://github.com/KillerQueen-BitesZaDusto/Naive_Bayes_Classifier/tree/master/Data).
* [Python Model in .ipnyb format](https://github.com/KillerQueen-BitesZaDusto/Naive_Bayes_Classifier/tree/master/Python_Naive_Bayes).
* [R Model](https://github.com/KillerQueen-BitesZaDusto/Naive_Bayes_Classifier/tree/master/R_Naive_Bayes).
* [Report including summary and mathematical implementation](https://github.com/KillerQueen-BitesZaDusto/Naive_Bayes_Classifier/blob/master/Naive_Bayes_Classifier_Summary.pdf).
