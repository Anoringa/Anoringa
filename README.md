
   
   # Anoringa
## _The Anonimus social network_

<img src="https://anoringa.win/anoringa.png" width="200">


![](https://img.shields.io/github/stars/Anoringa/anoringa-frontend) ![](https://img.shields.io/github/forks/Anoringa/anoringa-frontend) ![](https://img.shields.io/github/tag/Anoringa/anoringa-frontend) ![](https://img.shields.io/github/release/Anoringa/anoringa-frontend) ![](https://img.shields.io/github/issues/Anoringa/anoringa-frontend)[![Netlify Status](https://api.netlify.com/api/v1/badges/8f6d440f-6f42-46f3-b462-82aa502f9bc4/deploy-status)](https://app.netlify.com/sites/anoringa/deploys)![](https://img.shields.io/github/languages/code-size/Anoringa/anoringa-frontend)![](https://img.shields.io/twitter/follow/Anoringa1?label=Follow&style=social)


### 📖 Prerequisites

- [Node.js](https://nodejs.org/en/): please refer to their [installation guide](https://nodejs.dev/learn/how-to-install-nodejs).
- [NPM](https://npmjs.com/): please refer to their [installation guide](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm).
- [MongoDB](https://www.mongodb.com/): please refer to their [documentation](https://docs.mongodb.com/manual/installation/).
- [ImageKit](https://imagekit.io/).
- [Hcaptcha](https://www.hcaptcha.com/).




### 🏗 Setup
-  #####  🖼 Image CDN

    the image store is handled through [ImageKit](https://imagekit.io/) service. 


-  ##### 🔑 Authentication

    Authentication is handled through [Hcaptcha](https://www.hcaptcha.com/) service.
    - to run in local we need to configure the host file https://docs.hcaptcha.com/#local-development

-  ##### 💾 Database

    This project uses MongoDB as a database. When you run the program, the ODM [Mongoose](https://mongoosejs.com/) will create the colleactions inner the database. That collections will be named:
    - posts
    - users
    - comments.


### Backend
-  ##### ⬇ Download
    -  `git clone https://github.com/Anoringa/anoringa-backend`
    -  `cd anoringa-backend`
    -  `npm install`

-  ##### 🔧 Configuration
    -  The project needs to be configured with your API endpoints and API keys in order for the authentication flow to work.
    
    -  To do this, first copy .env.example into two new files in the same folder called .env.development and  .env.production, and replace the values within with your own API credentials:
    
    -  ```VUE_APP_NAME=<YOUR APP NAME>
        VUE_APP_URL=<YOUR APP URL>
        VUE_APP_API=<YOUR APP BACKEND ENDPOINT>
        VUE_APP_SOCKETIO=<YOUR APP BACKEND ENDPOINT>
        VUE_APP_HCAPTCHA=<YOUR HCAPTCHA CLIENT ID>
        VUE_APP_IMAGEKIT_PUBLICKEY=<YOUR IMAGEKIT PUBLIC KEY>
        VUE_APP_IMAGEKIT_ENDPOINT=<YOUR IMAGEKIT ENDPOINT>
        ```
  - ##### 🖥️ Local development

    ```
    npm install
    npm serve
    ```
### Frontend
-  ##### ⬇ Download
      - `git clone https://github.com/Anoringa/anoringa-frontend`
      -  `cd anoringa-frontend`
      -  `npm install`
- ##### 🔧 Configuration
    -   The project needs to be configured with your API endpoints and API keys in order for the authentication flow to work.
    -  To do this, first copy .env.example into two new files in the same folder called .env.development and  .env.production, and replace the values within with your own API credentials:

      -  ```VUE_APP_NAME=<YOUR APP NAME>
          VUE_APP_URL=<YOUR APP URL>
          VUE_APP_API=<YOUR APP BACKEND ENDPOINT>
          VUE_APP_SOCKETIO=<YOUR APP BACKEND ENDPOINT>
          VUE_APP_HCAPTCHA=<YOUR HCAPTCHA CLIENT ID>
          VUE_APP_IMAGEKIT_PUBLICKEY=<YOUR IMAGEKIT PUBLIC KEY>
          VUE_APP_IMAGEKIT_ENDPOINT=<YOUR IMAGEKIT ENDPOINT>
          ```

  - ##### 🖥️ Local development

    ```
    npm install
    npm serve
    ```
  - ##### 🖥️ Local build
    
    ```
    npm install
    npm build
    npm start
    ```


## 🍕 Community

Got Questions? ask to us in [Twitter](https://twitter.com/Anoringa1).  
Find Anoringa Issues and new features on our [kanban](https://github.com/orgs/Anoringa/projects/1).

<!--
## ⚖️ LICENSE

MIT © [Anoringa](LICENSE)
-->
