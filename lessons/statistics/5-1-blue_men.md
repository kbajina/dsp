[Think Stats Chapter 5 Exercise 1](http://greenteapress.com/thinkstats2/html/thinkstats2006.html#toc50) (blue men)

#### Python Code:
    import scipy.stats

    mu = 178
    sigma = 7.7
    min_height = 177.8 #5'10"
    max_height = 185.4 #6'1"
    height_dist = scipy.stats.norm(loc=mu, scale=sigma)

#### Result:
>height_dist.cdf(max_height) - height_dist.cdf(min_height)
>> = 0.3420946829459531

Therefore, approximately 34.2% of the U.S. Male population is in the height range to join the Blue Man Group.
