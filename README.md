
# ANÁLISES DE DADOS DAS DISTRIBUIDORAS DE ENERGIA ELÉTRICA 

## Introdução

Neste repositório estão reunidos arquivos para análise exploratória de dados utilizados no modelo de benchmarking utilizado pela ANEEL na regulção econômica do segmento de distribuição de energia elétrica. 


## Dados

Os dados utilizados estão disponibilizados no site da ANEEL (Agência Nacional de Energia Elétrica), nos links abaixo:

* [CP 062/2020](https://www.aneel.gov.br/consultas-publicas?p_auth=tpgjXTaM&p_p_id=participacaopublica_WAR_participacaopublicaportlet&p_p_lifecycle=1&p_p_state=normal&p_p_mode=view&p_p_col_id=column-2&p_p_col_pos=1&p_p_col_count=2&_participacaopublica_WAR_participacaopublicaportlet_ideParticipacaoPublica=3477&_participacaopublica_WAR_participacaopublicaportlet_javax.portlet.action=visualizarParticipacaoPublica) : Arquivos da Consulta Pública nº 062/2020


## Análise Exploratória (Python):

Exploração inicial do dados: 
```py
import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
import plotly.express as px

dados2000_2018 = pd.read_csv ('BASE_CONSOLIDADA_PBL.csv', sep=';', na_values='ND')
dados2000_2018.head()

```

