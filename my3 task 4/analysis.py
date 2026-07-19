import pandas as pd
from scipy.stats import ttest_ind

df = pd.read_csv("cleaned_financial_transactions_v2.csv")

cash = df[df["payment_method"] == "Cash"]["total_amount"]
credit = df[df["payment_method"] == "Credit Card"]["total_amount"]

t_stat, p_value = ttest_ind(cash, credit, nan_policy="omit")

print("T-Statistic:", t_stat)
print("P-Value:", p_value)

if p_value < 0.05:
    print("Reject the Null Hypothesis")
    print("There is a significant difference in average transaction amount.")
else:
    print("Fail to Reject the Null Hypothesis")
    print("There is no significant difference in average transaction amount.")