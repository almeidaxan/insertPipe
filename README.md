insertPipe
================

Description
-----------

You can insert pipe operators linked to keyboard shortcuts in [RStudio](https://www.rstudio.com/products/RStudio/).

### Available operators

<table>
<colgroup>
<col width="13%" />
<col width="86%" />
</colgroup>
<thead>
<tr class="header">
<th align="center">Operator</th>
<th align="left">Package</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="center"><strong><code>&lt;-</code></strong></td>
<td align="left"><a href="https://rdrr.io/r/base/assignOps.html">base</a>(Unlike the operator pipe in Rstudio, my version takes into account the space character after the operator, in Rstudio does not take into account.)</td>
</tr>
<tr class="odd">
<td align="center"><strong><code>%&gt;%</code></strong></td>
<td align="left"><a href="https://dplyr.tidyverse.org/">dplyr</a>(Unlike the operator pipe in Rstudio, my version takes into account the space character after the operator, in Rstudio does not take into account.)</td>
</tr>
<tr class="odd">
<td align="center"><strong><code>%&lt;&gt;%</code></strong></td>
<td align="left"><a href="https://magrittr.tidyverse.org/">magrittr</a></td>
</tr>
<tr class="odd">
<td align="center"><strong><code>%$%</code></strong></td>
<td align="left"><a href="https://magrittr.tidyverse.org/">magrittr</a></td>
</tr>
<tr class="odd">
<td align="center"><strong><code>%+%</code></strong></td>
<td align="left"><a href="https://github.com/jamesdunham/concatenate">concatenate</a></td>
</tr>
<tr class="odd">
<td align="center"><strong><code>%in%</code></strong></td>
<td align="left"><a href="https://stat.ethz.ch/R-manual/R-devel/library/base/html/match.html">base</a></td>
</tr>
<tr class="odd">
<td align="center"><strong><code>%T&gt;%</code></strong></td>
<td align="left"><a href="https://magrittr.tidyverse.org/">magrittr</a></td>
</tr>
</tbody>
</table>

Installation
------------

``` r
if (!requireNamespace("devtools", quietly = TRUE))
  install.packages("devtools")
devtools::install_github('Ranlod/insertPipe')
```
