DEVOPS ASSIGNMENT 1 -LEVEL 2

Here instead of manually creating ,everything is created using Terraform



THIS IS THE INVOKE URL



https://mlfeqxu4eh.execute-api.ap-south-1.amazonaws.com/v1





<img width="1607" height="675" alt="image" src="https://github.com/user-attachments/assets/81031d7d-0e50-4800-ab93-8610eaeea62a" />




FINAL URLS


https://mlfeqxu4eh.execute-api.ap-south-1.amazonaws.com/v1/json/1

https://mlfeqxu4eh.execute-api.ap-south-1.amazonaws.com/v1/countries/india

https://mlfeqxu4eh.execute-api.ap-south-1.amazonaws.com/v1/weather?latitude=28.6&longitude=77.2&hourly=temperature_2m











INTERFACES




<img width="1568" height="745" alt="image" src="https://github.com/user-attachments/assets/27ba1bcb-e693-4cc2-99bb-6bd0b0843c49" />









<img width="1862" height="817" alt="image" src="https://github.com/user-attachments/assets/08be012f-2a0c-4013-877c-b3dab0e1f86b" />




JSON



1. Open PowerShell and move into the Terraform project folder using cd Desktop\terraform-project.


2. Run terraform init to initialize Terraform and download the AWS provider 


3. Run terraform plan to preview what Terraform will create for the JSON endpoint.


4. Run terraform apply to create/update the JSON resources, methods, and integrations in AWS.




<img width="1243" height="766" alt="image" src="https://github.com/user-attachments/assets/c774e9e8-8ab4-4c9c-b896-ab45e18ae8c2" />



5. When Terraform asks for confirmation, type yes and press Enter.


6. After apply finishes, copy the invoke_url shown in the output

7. Test the JSON endpoint using the invoke URL




<img width="1576" height="663" alt="image" src="https://github.com/user-attachments/assets/901210dc-ae6a-490a-a06c-7fa4aa739a89" />



Testing JSON



<img width="1551" height="733" alt="image" src="https://github.com/user-attachments/assets/30d5a1df-c2df-414d-96c7-2cfe2da66ebe" />





FINAL URL AND OUTPUT


FINAL URL



https://mlfeqxu4eh.execute-api.ap-south-1.amazonaws.com/v1/json/1


https://mlfeqxu4eh.execute-api.ap-south-1.amazonaws.com/v1/weather?latitude=28.6&longitude=77.2&hourly=temperature_2m







OUTPUT


<img width="1892" height="555" alt="image" src="https://github.com/user-attachments/assets/da3ad5a2-1ff3-4577-9e5b-ad3c119b8ee4" />






2.WEATHER


1. Open PowerShell and navigate to your Terraform project folder using cd Desktop\terraform-project.


2. Make sure the file weather.tf exists and contains the resource, method, and integration configuration for the /weather route.


3. Run terraform init (only required the first time or if providers were changed) to initialize Terraform.


4. Run terraform plan to preview the changes that will create or update the /weather endpoint.





<img width="1182" height="687" alt="image" src="https://github.com/user-attachments/assets/e3ba3f56-c358-4974-b05e-82bccc11ac3c" />



5. Verify that the output shows resources related to aws_api_gateway_resource.weather, aws_api_gateway_method.weather_get, and aws_api_gateway_integration.weather_integration.


6. Run terraform apply to deploy the weather endpoint to AWS.


7. When prompted for confirmation, type yes and press Enter.


8. After the apply process completes, Terraform will redeploy the API to stage v1 (if deployment configuration is correctly set).


9. Copy the invoke_url printed in the Terraform output.


10. Test the weather endpoint in a browser or PowerShell using:


11. Confirm that a JSON weather response is returned. This means the Weather endpoint is successfully deployed.




---
<img width="1565" height="742" alt="image" src="https://github.com/user-attachments/assets/36116bcf-9818-4b90-b75e-ef5177a205b1" />





FINAL URL AND OUTPUT



FINAL URL


https://mlfeqxu4eh.execute-api.ap-south-1.amazonaws.com/v1/weather?latitude=28.6&longitude=77.2&hourly=temperature_2m





OUTPUT



<img width="1906" height="1051" alt="image" src="https://github.com/user-attachments/assets/993d6615-d4b0-4a60-ae33-aa4db6e4f601" />




3.COUNTRIES


1. Open PowerShell and go to your Terraform project folder using cd Desktop\terraform-project.


2. Ensure your Terraform file (example: countries.tf) contains the configuration for the route /countries/{name}, its GET method, and the HTTP integration to RestCountries.


3. Run terraform init (only needed the first time) to initialize Terraform.


4. Run terraform plan to preview the changes that will create or update the Countries endpoint.

<img width="1210" height="587" alt="image" src="https://github.com/user-attachments/assets/6852e79f-c1c5-4b18-91d9-32a42ff25a0c" />






5. Run terraform apply to deploy the Countries endpoint to AWS.


6. When Terraform asks for confirmation, type yes and press Enter.


7. After apply completes, copy the invoke_url shown in Terraform output (it ends with /v1).


8. Test the endpoint 


9. Confirm that a JSON response (country details) is returned.




<img width="1565" height="727" alt="image" src="https://github.com/user-attachments/assets/2e23eaa7-1768-4ab1-b941-4a64819ebb5a" />





FINAL URL AND OUTPUT




https://mlfeqxu4eh.execute-api.ap-south-1.amazonaws.com/v1/countries/india





OUTPUT




<img width="1917" height="1040" alt="image" src="https://github.com/user-attachments/assets/34ee7243-a15f-4a90-95cc-07a8745e6545" />






STEPS IN GENERAL




-DOWNLOADED TERRAFORM

<img width="1877" height="921" alt="image" src="https://github.com/user-attachments/assets/ef7e0c54-8833-469e-9368-0afaa681783a" />


INSTALLED AWS CLI


<img width="1592" height="656" alt="image" src="https://github.com/user-attachments/assets/67b6950d-8287-4a34-b367-731b02359134" />




<img width="1550" height="653" alt="image" src="https://github.com/user-attachments/assets/e7343199-7e07-4992-b072-ee0cb54a295e" />





I entered the AWS access key and AWS secret key ,the region (ap-south-1) and output format json in the powershell ,after aws configure



<img width="1413" height="757" alt="image" src="https://github.com/user-attachments/assets/107404f2-070d-43b3-97ca-017f266adc7f" />




THEN CRAETED A PROJECT FOLDER NAMED terraform project


<img width="902" height="447" alt="image" src="https://github.com/user-attachments/assets/08c1446a-1d4a-4992-981a-e09ef9f40673" />




OPENED VS CODE AND CEATED ALL TERRAFORM FILES



<img width="1721" height="880" alt="image" src="https://github.com/user-attachments/assets/7e9a3abe-541d-4d59-bdb6-f7a24589c1b4" />




THESE ARE SOME POWERSHELL PROMPTS






<img width="1238" height="691" alt="image" src="https://github.com/user-attachments/assets/00144bda-d0d3-43bc-90da-384830eeaa64" />





JSON





<img width="1212" height="652" alt="image" src="https://github.com/user-attachments/assets/c2ad4c46-259e-4ed7-a40c-283b6fd9ca82" />







WEATHER







<img width="1126" height="616" alt="image" src="https://github.com/user-attachments/assets/77c65bb7-99ee-4098-b061-494bb12d76ae" />








<img width="1263" height="621" alt="image" src="https://github.com/user-attachments/assets/f3cd7b3a-d2c2-4e4c-85a0-68298608353a" />










<img width="1275" height="660" alt="image" src="https://github.com/user-attachments/assets/c158a5a3-2c69-4c85-907e-160f04597998" />




COUNTRIES




<img width="1241" height="596" alt="image" src="https://github.com/user-attachments/assets/5a235ddb-3099-406a-b22f-19fb3018410a" />












