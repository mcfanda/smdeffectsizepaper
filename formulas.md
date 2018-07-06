Derivation of some of the orginal paper results
================
mc & mp
07, 06, 2018



Aim
===

Here we derive some of the most important formula in the paper. In this document, equations referred to with REF. \# indicates the reference number of the formula in the original paper.

Contrasts analysis background
=============================

A contrast is a linear combination of means whose coefficients sum up to zero, meant to estimate a particular comparison of means and test it against zero. We refer to the contrast set of coefficients as \(\boldsymbol{c}=\{c_i\}\), and to the expected set of means as \(\boldsymbol{\mu}=\{\mu_i\}\). The contrast coefficients (weights) are chosen such that \(\sum_i{c_i}=0\), with \(i=\{1,..,k\}\) where \(k\) is the number of means being compared. The contrast expected value is \(c\mu=\sum_i{(c_i \cdot \mu_i)}\). As an example, consider a simple design with two groups: the comparison of the two groups means can be carried out with a simple contrast with \(\boldsymbol{c}=\{1,-1\}\), in which the contrast value is simply the expected difference between means, \(c\mu=c_1\mu_1+c_2\mu_2=\mu_1-\mu_2\).

A contrast defined across \(k\) means of independent groups of size \(n\) can be tested employing either an independent samples t-test or an F-test. The t-test expected value, with \(k(n-1)\) degrees of freedom, is (Steiger 2004, 172 EQ 43 and p.173, EQ 46):

\[ E(t_{k(n-1)})={\sum{(c_i \cdot \mu_i)} \over {\sigma \cdot  \sqrt{\sum{c_i^2} \over n}}} \tag{REF. 1}\]

The F-test associated with a contrast is simply \(F_{1,k(n-1)}=t_{k(n-1)}^2\).

Cohen's \(\delta\) measures for contrasts
=========================================

Cohen (1988) defines several indices of effect size for the comparison of two means. In the context of two-groups designs, he defines: \[\delta={{\mu_1-\mu_2} \over \sigma} \tag{REF. 2}\] When the same logic is applied to a contrast comparison, it naturally generalizes to (cf. Steiger 2004)

\[\delta_0={\sum{(c_i \cdot \mu_i)} \over \sigma} \tag{REF. 3}\]

Steiger (2004), pag. 173, EQ 46, defines

\[E_s={\sum{c_i\mu_i} \over {\sigma}} \tag{1}\] which is \(\delta_0\).

Standardized contrast effect size measure
-----------------------------------------

\[\delta_z={\sum{(c_i \cdot \mu_i)} \over {\sigma \sqrt{\sum{c_i^2}}}} \tag{REF. 4}\] If we set \(z={1/\sqrt{\sum{c_i^2}}}\), we obtain: \[\delta_z={z \cdot \delta_0} \tag{REF. 5}\]

### Result in the paper

\[f={{1 \over {\sqrt{k}} } \cdot \delta_z} \tag{REF. 8}\]

### Derivation

Cohen (1988), p. 274 (Maxwell and Delaney 2000, EQ. 89) defines \(f\) as the ratio between the expected standard deviation of the means and the error standard deviation:

\[f={\sigma_\mu \over \sigma}\] in our case, we are looking for: \[f={\sigma_\psi \over \sigma}\] where \(\psi\) is any contrast of interest. Faul et al. (2007), p. 29 defines \[\hat{\sigma_{\psi}}={\sqrt{{(\sum{c_i\hat{\mu_i}})^2\over N{\sum{c_i^2} \over n}}}}\] since \(N=kn\), we have \[\sigma_{\psi}={\sqrt{{(\sum{c_i\mu_i})^2\over k\sum{c_i^2}}}}\] thus, \[\sigma_{\psi}={\sum{c_i\mu_i}\over\sqrt{ k\sum{c_i^2}}}\] and \[f={\sigma_{\psi} \over \sigma}={\sum{c_i\mu_i}\over\sqrt{ k\sum{c_i^2}}}={{1 \over \sqrt{k}} \cdot \delta_z}\] \(\hfill\blacksquare\)

However, it is interesting to show the same result without dealing with sample estimates. Consider a regression with \(k-1\) contrasts, one is the contrast of interest \(\psi\), and the others, \(\phi_i\), are contrasts orthogonal to each other and to the contrast of interest.
The total variance of the \(y\) variable will be: \[\sigma_t^2=\sigma_\psi^2+\sum{\sigma_{\psi_i}^2}+\sigma^2\] because of the orthogonality of the contrasts. The population \(b\) coefficient associated with \(\psi\) is: \[b_\psi={\sum{c_i\mu_i} /k \over \sum{c_i^2}/k}={\sum{c_i\mu_i} \over \sum{c_i^2}}\] and the variance examplained by the contrast \(\psi\) is given by: \[\sigma_\psi^2=b_\psi^2 \cdot \sigma_c^2={(\sum{c_i\mu_i})^2 \over (\sum{c_i^2})^2} \cdot {\sum{c_i^2} \over k}= {(\sum{c_i\mu_i})^2 \over \sum{c_i^2}} \cdot {1 \over k}\] Taking the square root yields: \[\sigma_\psi= {1 \over \sqrt{k}} \cdot {\sum{c_i\mu_i} \over \sqrt{\sum{c_i^2}}}\] because we were looking for the \(f=\sigma_\psi/\sigma\) ratio, we obtain \[f={\sigma_\psi \over \sigma}={1 \over \sqrt{k}} \cdot {\sum{c_i\mu_i} \over \sigma \sqrt{\sum{c_i^2}}}={1 \over \sqrt{k}} \cdot \delta_z\] \(\hfill\blacksquare\)

### Paper result

\[\eta^2={\delta_z^2 \over {\delta_z^2+k}}\tag{REF. 9}\]

### Derivation

\[\eta^2={\sigma_\psi^2 \over {\sigma_\psi^2+\sigma^2}}\] we have shonw that \[\sigma_\psi^2= {1 \over k} \cdot {(\sum{c_i\mu_i})^2 \over {\sum{c_i^2}}}\] thus \[\eta^2={{1 \over k} \cdot {(\sum{c_i\mu_i})^2 \over {\sum{c_i^2}}} \over {{1 \over k} \cdot {(\sum{c_i\mu_i})^2 \over {\sum{c_i^2}}}+\sigma^2}}=\] \[={{1 \over k} \cdot {(\sum{c_i\mu_i})^2 \over {\sum{c_i^2}}} \over {(\sum{c_i\mu_i})^2+k\sigma^2\sum{c_i^2}  \over{k\sum{c_i^2}}}}=\] \[={{(\sum{c_i\mu_i})^2 } \over {(\sum{c_i\mu_i})^2+k\sigma^2 \sum{c_i^2} }}=\] let's devide numerator and denominator by \(\sigma^2 \sum{c_i^2}\) \[={{(\sum{c_i\mu_i})^2 \over \sigma^2 \sum{c_i^2} } \over {{(\sum{c_i\mu_i})^2 \over \sigma \sum{c_i^2}}+{k\sigma^2 \sum{c_i^2} \over \sigma^2 \sum{c_i^2}}}}=\] \[={{\delta_z^2} \over {\delta_z^2+k}}\] \(\hfill\blacksquare\)

Scaled effect size measure
--------------------------

A different method of scaling the constrat effect size measure which guarantees better interpretability and comparability can be suggested. Let's \(g={2 \over \sum_i{\left|{c_i}\right|}}\), where \(|c_i|\) indicates the absolute value of \(c_i\), then

\[\delta_g=g \cdot \delta_0={2 \over \sum{|{c_i}|}} \cdot {{\sum_i{c_i \cdot \mu_i}} \over  {\sigma }}  \tag{REF. 10}\]

### Paper results

All the derivations for \(\delta_z\) can be derived for \(\delta_g\) by noticing that

\[\delta_z={{z \over g} \delta_g}\] thus, one simply substitutes \({{z \over g} \delta_g}\) is place of \(\delta_z\). As an example, we derive here:

\[\eta_p^2={\delta_g^2 \over { \delta_g^2+({{g^2  \over z^2} \cdot k})}} \tag{REF. 16}\]

### Derivation

Recall that \[={{\delta_z^2} \over {\delta_z^2+k}}\]

and substitutes \({{z \over g} \delta_g}\) is place of \(\delta_z\):

\[\eta_p^2={{z^2 \over g^2}{\delta_g^2} \over {{z^2 \over g^2}{\delta_g^2}+k}}=\]

\[={{z^2\delta_g^2} \over {z^2\delta_g^2+g^2k }}\] we now divide numerator and denominator by \(z^2\) and we obtain: \[={{\delta_g^2} \over {\delta_g^2+ {g^2 \over z^2}k}}\] \(\hfill\blacksquare\)

Sample Estimation
=================

\[d_z={\sum{(c_i \cdot m_i)} \over {s_p \sqrt{\sum{c_i^2}}}}  \tag{2}\]

and

\[d_g=2 \cdot {\sum{(c_i \cdot m_i)} \over {s_p \sum{|{c_i}|}}}  \tag{3}\]

### Paper result

\[d_z =  {t_{k(n-1)} \over {\sqrt{ n}} }  \tag{REF. 20}\]

### Derivation

Recall that \[t_{k(n-1)}=\sqrt{n} \cdot d_z  \tag{REF. 7}\] thus \[d_z =  {t_{k(n-1)} \over {\sqrt{ n}} }\]

\(\hfill\blacksquare\)

### Paper result

\[{\delta_z}={\sqrt{k \cdot {n-1 \over n}} \cdot { r_{contrast} \over \sqrt{1-r_{contrast}^2}}} \tag{REF. 22}\]

### Derivation

Following (Rosenthal, Rosnow, and Rubin 2000), pag. 38, EQ 3.2

\[F_{contrast}={MS_{contrast}\over{MS_{within}}}\] and

\[r_{contrast}=\sqrt{F_{contrast} \over{F_{contrast}+k(n-1)}}\] thus

\[r_{contrast}=\sqrt{t_{contrast}^2 \over{t_{contrast}^2+k(n-1)}}\] therefore \[r_{contrast}=\sqrt{n\cdot d_z^2 \over{n \cdot d_z^2+k(n-1)}}\] by dividing num and den by \(n\), we obtain: \[r_{contrast}=\sqrt{d_z^2 \over{ d_z^2+{k(n-1)\over n}}}\] which means: \[r_{contrast}^2={d_z^2 \over{ d_z^2+{k(n-1)\over n}}}\] \[r_{contrast}^2({ d_z^2+{k(n-1)\over n}})={d_z^2}\] \[{r_{contrast}^2 d_z^2 +{r_{contrast}^2{k(n-1)\over n}}}={d_z^2}\] \[{r_{contrast}^2{k(n-1)\over n}}={d_z^2}-{r_{contrast}^2 d_z^2}\] \[{r_{contrast}^2{k(n-1)\over n}}={d_z^2}(1-{r_{contrast}^2)}\] \[{{k(n-1)\over n} {\cdot {r_{contrast}^2} \over 1-{r_{contrast}^2}}} ={d_z^2}\] \[{d_z}=\sqrt{{k(n-1)\over n}} \cdot {{r_{contrast}} \over \sqrt{1-{r_{contrast}^2}}}\] \(\hfill\blacksquare\)

Power Analysis
==============

Let \(\lambda_k\) be the noncentrality parameter of the \(t_{k(n-1)}\) distribution associated with the t-test for \(d_z\).

### Result

\[\lambda_k={\sqrt{n} \cdot d_z} \tag{REF. 27}\]

Following Liu (2013), page 87, EQ 4.25,

\[\lambda_k={{\sum{c_i\mu_i}}\over{\sqrt{\sigma^2({\sum{c_i^2\over n_i}})}}}\] which simplifies for equal cell size to: \[\lambda_k={\sqrt{n} \cdot {{\sum{c_i\mu_i}}\over{\sqrt{\sigma^2 \cdot {\sum{c_i^2}}}}}}\] and thus \[\lambda_k={\sqrt{n} \cdot d_z}\] \(\hfill\blacksquare\)

### Paper result

The non-centrality parameter of the F-test is given by: \[\hat{\lambda_F}=k\cdot n \cdot f^2 \tag{REF. 30}\]

### Derivation

Note that this is not a result of the paper, since it is taken from Steiger (2004), p. 169 EQ 10 or Cohen (1988), p. 481, Steiger and Fouladi (1997), p. 246 EQ 9.95. However, it is interesting to derive it from REF. 27.

First, notice that for contrasts with 1 numerator \(df\), \(\lambda_F=\lambda_t^2\). Therefore

\[\lambda_F={n \cdot d_z^2}\] we can multiply and divide by \(k\), and we get \[\lambda_F={{n \cdot k \over k } \cdot d_z^2}\] since \(f=d_z/\sqrt{k}\), we reach: \[\lambda_F={n \cdot k \cdot f^2}\]

\(\hfill\blacksquare\)

Confidence intervals
====================

All the formulas in this sections are derived directly from the literature. We only want to check that \[Pr\left[ {{2 \over \sum{|{c_i}|}} \cdot \sqrt{\sum{c_i^2} \over n}} \cdot \hat{\lambda_l} \le d_g \le {{2 \over \sum{|{c_i}|}} \cdot \sqrt{\sum{c_i^2} \over n}} \cdot \hat{\lambda_l} \right]=1-\alpha \tag{REF. 34}\] can be derived from \[Pr\left[{{\hat{\lambda_l} \over \sqrt{n}} \le d_z \le {\hat{\lambda_u} \over {\sqrt{n}}}  }\right]=1-\alpha \tag{REF. 33}\] by substituing \(d_z\) with \(d_g\).

### Derivation

Recall that \(d_g={g \over z}d_z\). Thus, for \(d_g\) we have: \[Pr\left[{{g \over z}{\hat{\lambda_l} \over \sqrt{n}} \le {{g \over z}d_z} \le {g \over z}{\hat{\lambda_u} \over {\sqrt{n}}}  }\right]=1-\alpha \] \[Pr\left[{{g \cdot z^{-1}}{\hat{\lambda_l} \over \sqrt{n}} \le {d_g} \le {g \cdot  z^{-1}}{\hat{\lambda_u} \over {\sqrt{n}}}  }\right]=1-\alpha \tag{REF. 33}\] \[Pr\left[{{{2 \over \sum{|c_i|}} \cdot z^{-1}}{\hat{\lambda_l} \over \sqrt{n}} \le {d_g} \le {{2 \over \sum{|c_i|}} \cdot  z^{-1}}{\hat{\lambda_u} \over {\sqrt{n}}}  }\right]=1-\alpha\] \[Pr\left[{{{2 \over \sum{|c_i|}} \cdot \sqrt{\sum{c_i^2}}}{\hat{\lambda_l} \over \sqrt{n}} \le {d_g} \le {{2 \over \sum{|c_i|}} \cdot  \sqrt{\sum{c_i^2}}}{\hat{\lambda_u} \over {\sqrt{n}}}  }\right]=1-\alpha\] \[Pr\left[ {{2 \over \sum{|{c_i}|}} \cdot \sqrt{\sum{c_i^2} \over n}} \cdot \hat{\lambda_l} \le d_g \le {{2 \over \sum{|{c_i}|}} \cdot \sqrt{\sum{c_i^2} \over n}} \cdot \hat{\lambda_l} \right]=1-\alpha \] \(\hfill\blacksquare\)

References
==========

Cohen, Jacob. 1988. “Statistical Power Analysis for the Behavioral Sciences . Hilsdale.” *NJ: Lawrence Earlbaum Associates* 2.

Faul, Franz, Edgar Erdfelder, Albert-Georg Lang, and Axel Buchner. 2007. “G\* Power 3: A Flexible Statistical Power Analysis Program for the Social, Behavioral, and Biomedical Sciences.” *Behavior Research Methods* 39 (2). Springer: 175–91.

Liu, Xiaofeng Steven. 2013. *Statistical Power Analysis for the Social and Behavioral Sciences: Basic and Advanced Techniques*. Routledge.

Maxwell, Scott E, and Harold D Delaney. 2000. *Designing Experiments and Analyzing Data: A Model Comparison Perspective*. NJ: Mahwah, Lawrence Erlbaum Associates.

Rosenthal, Robert, Ralph L Rosnow, and Donald B Rubin. 2000. *Contrasts and Effect Sizes in Behavioral Research: A Correlational Approach*. Cambridge University Press.

Steiger, James H. 2004. “Beyond the F Test: Effect Size Confidence Intervals and Tests of Close Fit in the Analysis of Variance and Contrast Analysis.” *Psychological Methods* 9 (2). American Psychological Association: 164.

Steiger, James H, and Rachel T Fouladi. 1997. “Noncentrality Interval Estimation and the Evaluation of Statistical Models.” In *What If There Were No Significance Tests?: Classic Edition*, edited by Lisa Lavoie Ed Harlow, Stanley A Mulaik, and James H Steiger. Lawrence Erlbaum Associates Publishers.
