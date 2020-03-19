import matplotlib.pyplot as plt
import numpy as np

from lmfit.models import ExpressionModel

# Number of frames
nf = [2000,1500,1000,500]
time = [6534.59,4871.85,3282.48,1682.1186]


# Fitting
gmod = ExpressionModel("a*x +b")
result = gmod.fit(time, x=nf, a=10, b=0)

# Prediction
x = np.arange(0,20000,500)
y = gmod.eval(result.params,x=x)
print (result.params)
print (result.best_fit)
print (result.best_values)
print(result.fit_report())


test_nf = 200000
test_time = gmod.eval(result.params,x=test_nf)
print ('{0:d} frames taks {1:f} s ({2:f} hours to finish)'.format(test_nf,test_time,test_time/3600.0))

plt.plot(x,y,'.-')
plt.plot(nf, time, '*')
plt.show()

