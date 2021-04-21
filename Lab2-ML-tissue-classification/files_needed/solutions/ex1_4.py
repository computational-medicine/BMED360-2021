labels = pd.Index(y)
df = pd.DataFrame(labels.value_counts())
df.columns = ['Number']
df = df.rename_axis(index='Diabetes')
df