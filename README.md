<div align="center">
  <br>
  <img alt="Anoringa" src="https://i.imgur.com/Ay4NXPn.png" width="300px">
  <h1>🕵️ Anoringa 🕵️</h1>
  <strong>The anonymous open source social network</strong>
  <br>
  <strong>this project is also known as imageboard using the MEVN Stack.</strong>
  <br>
  <small>the goal is to provide people with a site to discuss current issues and news without bias from other people</small>
	
</div>
<br>




[![anoringa-screencap](https://i.imgur.com/5TM6Fhu.png)
](https://anoringa.win)





#### FrontEnd
![](https://img.shields.io/github/stars/Anoringa/anoringa-frontend) ![](https://img.shields.io/github/forks/Anoringa/anoringa-frontend) ![](https://img.shields.io/github/issues/Anoringa/anoringa-frontend)[![Netlify Status](https://api.netlify.com/api/v1/badges/8f6d440f-6f42-46f3-b462-82aa502f9bc4/deploy-status)](https://app.netlify.com/sites/anoringa/deploys)![](https://img.shields.io/github/languages/code-size/Anoringa/anoringa-frontend)![](https://img.shields.io/twitter/follow/Anoringa1?label=Follow&style=social)

#### BackEnd
![](https://img.shields.io/github/stars/Anoringa/anoringa-backend) ![](https://img.shields.io/github/forks/Anoringa/anoringa-backend) ![](https://img.shields.io/github/issues/Anoringa/anoringa-backend)![](https://img.shields.io/github/languages/code-size/Anoringa/anoringa-backend)![](https://img.shields.io/twitter/follow/Anoringa1?label=Follow&style=social)


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


	-  ##### Developement PC Network Config - DNS Host
		-  ##### Edit Host file windows
			-  ##### using gui tool
			in the host file located in `C:\Windows\System32\Drivers\etc\hosts` add the following line<br></br>
			`127.0.0.1 test.mydomain.com`<br></br>
			we recommend to use Notepad++ to edit this file because allows you to run as admin
			-  ##### also you can use powershell
			```Powershell
			Set-HostsEntry -IPAddress 127.0.0.1 -HostName 'test.mydomain.com'
			Remove-HostsEntry -HostName 'test.mydomain.com'
			```




-  ##### 💾 Database

    This project uses MongoDB as a database. When you run the program, the ODM [Mongoose](https://mongoosejs.com/) will create the colleactions inner the database. That collections will be named posts,users and comments.

## Using Docker
-  ##### ⬇ Download
    -  `git clone https://github.com/Anoringa/Anoringa`
    -  `cd Anoringa`

-  ##### 🔧 Configuration
    -  Modify .ENV files
    -  data\frontend\.env

		```
		VUE_APP_NAME=<YOUR APP NAME>
		# Example App Name:-  
		# Anoringa
		
		VUE_APP_URL=<YOUR APP URL>
		# Example App URL:-  
		# http://test.mydomain.com
		
		VUE_APP_API=<YOUR APP BACKEND ENDPOINT>
		# Example App Api:-  
		# http://localhost:3000
		
		VUE_APP_SOCKETIO=<YOUR APP BACKEND ENDPOINT>
		# Example SocketIO URL:-  
		# http://localhost:3000
		
		VUE_APP_HCAPTCHA=<YOUR HCAPTCHA CLIENT ID>
		VUE_APP_IMAGEKIT_PUBLICKEY=<YOUR IMAGEKIT PUBLIC KEY> 
		VUE_APP_IMAGEKIT_ENDPOINT=<YOUR IMAGEKIT ENDPOINT>
		VUE_APP_ISSUESAPI=<YOUR APP ISSUES API ENDPOINT>
		VUE_APP_ONESIGNAL_APPID=<YOUR ONESIGNAL APPID>
		 ```
    -  data\backend\.env
		```
		SERVER_PORT=3000
		SERVER_ADDRESS=0.0.0.0
		
		MONGODB_URL=YourConnectionString
		# Example Connection String:-  
		# mongodb://127.0.0.1:27017/mydb
		# mongodb://[MongodbHost]:[PORT]/[DatabaseName]
		
		JWT_SECRET=YourSecret
		# Example Secret:-  
		# password123
		
		JWT_TIMEOUT_DURATION="12 hours"
		HCAPTCHA_SECRET=YourHcaptchaSecret
		IMAGEKIT_PUBLICKEY=YourImageKitPublicKey
		IMAGEKIT_PRIVATEKEY=YourImageKitPrivateKey
		IMAGEKIT_ENDPOINT=YourImageKitEndpoint
		 ```

-  ##### 🚀 Run
-  ###### Normal
    External DB,Captcha,ImageStore,Issues Api,Notifications Api
    -  `docker-compose up`
    -  to remove previuos running intances and build images again

    ```docker-compose rm --all &&
    docker-compose pull &&
    docker-compose build --no-cache &&
    docker-compose up -d --force-recreate
	```
-  ###### With DB
    -  `docker-compose -f ./docker-compose_with_db.yml up`
    -  to remove previuos running intances and build images again

    ```docker-compose rm --all &&
    docker-compose pull &&
    docker-compose build --no-cache &&
    docker-compose -f ./docker-compose_with_db.yml up -d --force-recreate
	```

## Using Baremetal machine

### Backend
-  ##### ⬇ Download
    -  `git clone https://github.com/Anoringa/anoringa-backend`
    -  `cd anoringa-backend`
    -  `npm install`

-  ##### 🔧 Configuration
    -  The project needs to be configured with your API endpoints and API keys in order for the authentication flow to work.
    
    -  To do this, first copy .env.example into a new file in the same folder called .env , then replace the values within with your own API credentials:
    
   -  ```
         SERVER_PORT=3000
         SERVER_ADDRESS=0.0.0.0
         MONGODB_URL=YourConnectionString
         JWT_SECRET=YourSecret
         JWT_TIMEOUT_DURATION="12 hours"
         HCAPTCHA_SECRET=YourHcaptchaSecret
         IMAGEKIT_PUBLICKEY=YourImageKitPublicKey
         IMAGEKIT_PRIVATEKEY=YourImageKitPrivateKey
         IMAGEKIT_ENDPOINT=YourImageKitEndpoint
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

    -  ```
          VUE_APP_NAME=<YOUR APP NAME>
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
