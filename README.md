# Anoringa

![](https://anoringa.win/anoringa.png)

![](https://img.shields.io/github/stars/Anoringa/anoringa-frontend) ![](https://img.shields.io/github/forks/Anoringa/anoringa-frontend) ![](https://img.shields.io/github/tag/Anoringa/anoringa-frontend) ![](https://img.shields.io/github/release/Anoringa/anoringa-frontend) ![](https://img.shields.io/github/issues/Anoringa/anoringa-frontend)

### ImageKit
- create an account and get an api key

### Hcaptcha
- create an account and get an api key


### Frontend
- `git clone https://github.com/Anoringa/anoringa-frontend`
-  `cd anoringa-frontend`
-  `npm install`


### Backend
-  `git clone https://github.com/Anoringa/anoringa-backend`
-  `cd anoringa-backend`
-  `npm install`


###Sequence Diagram
                    
```seq
FrontEnd->Hcaptcha: token request
Hcaptcha->China: Says Hello 
Note right of China: China thinks\nabout it 
China-->Andrew: How are you? 
FrontEnd->>China: I am good thanks!
```

                
###FlowChart

```flow
st=>start: Login
op=>operation: Login operation
cond=>condition: Successful Yes or No?
e=>end: To admin

st->op->cond
cond(yes)->e
cond(no)->op
```


###End
