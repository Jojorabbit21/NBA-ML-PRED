import pandas as pd

col = ['Visit', 'Home', 'V_Odd', 'H_Odd', 'OU']
df = pd.DataFrame(columns=col,
                  data=[['WAS','ATL','-130','250','221.5'],
                        ['MIA','CLE','-110','450','208.5']
                        ])

for game in range(len(df)):
  print(df.loc[game,'Visit'])