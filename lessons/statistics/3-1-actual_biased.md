[Think Stats Chapter 3 Exercise 1](http://greenteapress.com/thinkstats2/html/thinkstats2004.html#toc31) (actual vs. biased)

resp = nsfg.ReadFemResp()

num_kids = dict(resp['numkdhh'].value_counts())

pmf_numkdhh = thinkstats2.Pmf(num_kids, label='Actual PMF')

biased_pmf_numkdhh = BiasPmf(pmf_numkdhh, label='Biased PMF')


thinkplot.PrePlot(2, cols= 2)

thinkplot.Pmfs([pmf_numkdhh, biased_pmf_numkdhh])

thinkplot.Show(xlabel='# of kids under 18', ylabel='Probability Distribution', yticks = np.linspace(0,.6,7))

#### See below the plotting for the Actual vs. Biased PMF for number of children in a household under the age of 18:

![PMF Distribution Comparison](https://github.com/kbajina/dsp/blob/master/lessons/statistics/Exercise%203.1%20(PMFs%20Plot).png)


#### pmf_numkdhh.Mean() 
> The mean for **actual** PMF is 1.024205155043831.

#### biased_pmf_numkdhh.Mean() 
> The mean for **biased** PMF is 2.403679100664282.