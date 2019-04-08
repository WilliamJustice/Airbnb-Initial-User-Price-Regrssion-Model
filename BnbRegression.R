##Linear Regression predicting Review Score based upon First time User Nightly Prices


> model <- lm(InintialUserData$Price ~ InintialUserData$`Review Score`)
> summary(model)

Call:
  lm(formula = InintialUserData$Price ~ InintialUserData$`Review Score`)

Residuals:
  Min     1Q Median     3Q    Max 
-74.87 -35.68 -12.77  15.26 897.18 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)   
(Intercept)                      10.3603    30.1642   0.343  0.73128   
InintialUserData$`Review Score`   0.9730     0.3159   3.080  0.00209 **
  ---
  Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 58.5 on 2382 degrees of freedom
Multiple R-squared:  0.003968,	Adjusted R-squared:  0.003549 
F-statistic: 9.488 on 1 and 2382 DF,  p-value: 0.002092

> attributes(model)
$`names`
[1] "coefficients"  "residuals"     "effects"       "rank"          "fitted.values" "assign"       
[7] "qr"            "df.residual"   "xlevels"       "call"          "terms"         "model"        

$class
[1] "lm"

> model$coef
(Intercept) InintialUserData$`Review Score` 
10.3603102                       0.9729738 
plot(InintialUserData$Price, InintialUserData$`Review Score`, main = "Scatterplot")


abline(model)
abline(model, col = "Red")


anova(model)

Analysis of Variance Table

Response: InintialUserData$Price
Df  Sum Sq Mean Sq F value   Pr(>F)   
InintialUserData$`Review Score`    1   32472   32472  9.4883 0.002092 **
  Residuals                       2382 8151956    3422                    
---
  Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

ggplot(InintialUserData, aes(InintialUserData$Price, InintialUserData$`Review Score`))+ geom_point()+ xlim(60, 400)+ geom_smooth()