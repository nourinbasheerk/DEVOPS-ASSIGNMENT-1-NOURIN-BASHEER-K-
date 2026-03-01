# DEVOPS-ASSIGNMENT-1-NOURIN-BASHEER-K-

 DevOps Assignment 1 – Level 1- AWS API Gateway (Manual Setup via AWS Console)



 THREE ARE THE URLS AFTER DEPLOYMENT



 https://3eygptsnxi.execute-api.ap-south-1.amazonaws.com/v1/todos/1    ( JSON)

 
 https://3eygptsnxi.execute-api.ap-south-1.amazonaws.com/v1/weather?latitude=28.6&longitude=77.2&hourly=temperature_2m   (WEATHER)

 
 https://3eygptsnxi.execute-api.ap-south-1.amazonaws.com/v1/countries/india   (COUNTRIES)

 

 



<img width="1905" height="940" alt="image" src="https://github.com/user-attachments/assets/8ae86b75-2ca8-4009-8bc0-0c62164a7a4c" />







BELOW IS THE INTERFACE AFTER CREATING AND DEPLOYING ALL THREE ROUTES







<img width="1903" height="1061" alt="image" src="https://github.com/user-attachments/assets/1b1f74a5-f4ee-412c-88b5-0e758a00a562" />


 
 
THIS IS THE ENVOKE URL



https://3eygptsnxi.execute-api.ap-south-1.amazonaws.com/v1



<img width="991" height="235" alt="image" src="https://github.com/user-attachments/assets/6d536608-abcb-4dca-bb99-be99d8f1444e" />



Routes Configuration


1.JSON Route


/json/{todo}

Backend Integration:


https://jsonplaceholder.typicode.com/{todo}


Integration Type:
Full path proxy
HTTP Integration

https://3eygptsnxi.execute-api.ap-south-1.amazonaws.com/v1/todos/1


Working Example Output:



<img width="1920" height="1080" alt="Screenshot (174)" src="https://github.com/user-attachments/assets/253fd707-2585-48e9-b263-f1fc2a57de6d" />



 2.WEATHER ROUTE
 
<img width="1920" height="1080" alt="Screenshot (183)" src="https://github.com/user-attachments/assets/0cb97c60-74c8-4446-b619-4512db24e43f" />

Route:

/weather


Backend Integration:


https://api.open-meteo.com/v1/forecast



Required Query Parameters:

latitude (mandatory)
longitude (mandatory)
hourly (optional)

Working Example :


https://3eygptsnxi.execute-api.ap-south-1.amazonaws.com/v1/weather?latitude=28.6&longitude=77.2&hourly=temperature_2m


Output after deployment:
<img width="1920" height="1080" alt="Screenshot (175)" src="https://github.com/user-attachments/assets/f73a9efd-f31a-4a18-8525-4d014d503c51" />


3.COUNTRIES ROUTE

Route:

/countries/{name}



<img width="1920" height="1080" alt="Screenshot (176)" src="https://github.com/user-attachments/assets/63fc7eea-9012-44c5-970c-b96b7c94734f" />

 
Backend Integration:

https://restcountries.com/v3.1/name/{name}


Integration Type:
Path parameter mapping


Example: I have tested by pasting link in browser)


https://3eygptsnxi.execute-api.ap-south-1.amazonaws.com/v1/countries/india


 
Output:


<img width="1920" height="1080" alt="Screenshot (178)" src="https://github.com/user-attachments/assets/4dad6d59-8384-487e-9fd0-2e27664adb3c" />


Returns country details including capital, population, region, etc.



I hve also enabled the  CORS Configuration
<img width="1920" height="1080" alt="Screenshot (184)" src="https://github.com/user-attachments/assets/57f06aaf-2344-4e70-90a2-6f8bb290968d" />


 Invoke URL
 
<img width="1920" height="1080" alt="Screenshot (173)" src="https://github.com/user-attachments/assets/b9dc4537-38b8-4282-b2cb-d8ba70d5570c" />


https://<your-api-id>.execute-api.ap-south-1.amazonaws.com/v1


THE OVERALL STEPS ARE:


-For each route:
-Created Resource

<img width="1910" height="907" alt="image" src="https://github.com/user-attachments/assets/cc39e250-d413-4897-ba55-e76486f74699" />



-Created GET Method


<img width="1880" height="825" alt="image" src="https://github.com/user-attachments/assets/a668e17a-6df7-411b-8799-b2ac08367ba3" />



-Configured Integration (HTTP / HTTP Proxy)


-Mapped path or query parameters where required(for weather)

<img width="1903" height="807" alt="image" src="https://github.com/user-attachments/assets/9443da62-4a97-4059-8964-f83913754d5c" />



<img width="1500" height="675" alt="image" src="https://github.com/user-attachments/assets/7cc479fe-779e-4808-be59-592e1ed26062" />


-Enabled CORS

<img width="1905" height="886" alt="image" src="https://github.com/user-attachments/assets/e7f4b8c9-e78d-4af6-a7f0-c26d59e54162" />



-Deployed API to stage v1


<img width="1647" height="796" alt="image" src="https://github.com/user-attachments/assets/d914b9aa-0330-43f0-8f9a-9778ae62966b" />



<img width="1920" height="1080" alt="Screenshot (173)" src="https://github.com/user-attachments/assets/2733413c-e088-4978-9c9f-55eb143b3158" />


