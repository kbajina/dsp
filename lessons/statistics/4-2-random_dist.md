[Think Stats Chapter 4 Exercise 2](http://greenteapress.com/thinkstats2/html/thinkstats2005.html#toc41) (a random distribution)

#### Python Code for PMF:
    rand_num_pmf = thinkstats2.Pmf(np.random.random(1000), label='PMF Distribution')
    
    thinkplot.preplot(1)
    thinkplot.Pmf(rand_num_pmf)
    
##### PMF Graph:

![PMF Graph](httpshttps://github.com/kbajina/dsp/blob/master/lessons/statistics/Exercise%204.2%20(PMF%20Plot).png)

> While the gap between random numbers from np.random.random is evenly spaced, this graph doesn't give the picture of a uniform distribute, because of the gaps between the random numbers. The line graph returns to 0% probability for all of these gap figures. This is because the PMF only looks at the probability of each number (event) occuring.


#### Python Code for CDF:
    rand_num_cdf = thinkstats2.Cdf(np.random.random(1000), label='PMF Distribution')
    
    thinkplot.preplot(1)
    thinkplot.Cdf(rand_num_cdf)
    
##### CDF Graph:

![CDF Graph](https://github.com/kbajina/dsp/blob/master/lessons/statistics/Exercise%204.2%20(CDF%20Plot).png)

> The CDF graph does depict a uniform distribution because it consideres the cumulative probability of each individual number (event) occuring. Therefore all the numbers with 0% probability don't skew the line graph. The diagonal shape of the CDF line graph shows the random numbers generated are roughly uniform.