[Think Stats Chapter 4 Exercise 2](http://greenteapress.com/thinkstats2/html/thinkstats2005.html#toc41) (a random distribution)

#### Python Code for PMF:
    rand_num_pmf = thinkstats2.Pmf(np.random.random(1000), label='PMF Distribution')
    
    thinkplot.preplot(1)
    thinkplot.Pmf(rand_num_pmf)
    
##### PMF Graph:

![PMF Distribution Comparison](https://github.com/kbajina/dsp/blob/master/lessons/statistics/Exercise%203.1%20(PMFs%20Plot).png)