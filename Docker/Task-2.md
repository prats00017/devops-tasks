<img width="1476" height="742" alt="image" src="https://github.com/user-attachments/assets/2ad0d022-9af5-4bf3-b31c-2033bb96bdd4" />


<img width="1462" height="756" alt="image" src="https://github.com/user-attachments/assets/a5e791c2-8775-4599-8b60-6e3d420e25f4" />


<img width="1472" height="753" alt="image" src="https://github.com/user-attachments/assets/e93742c0-b1d6-4ddb-8098-eacc6ecefe75" />


<img width="1467" height="331" alt="image" src="https://github.com/user-attachments/assets/ef719a26-6590-4a0d-b2e0-f7cd2669e140" />


nano index.html:
<!DOCTYPE html>
<html>
<head>
    <title>My Profile</title>
</head>
<body>
    <h1>Prateek Gupta</h1>
    <h2>MCA Student</h2>
    <h3>Cloud & Cybersecurity Enthusiast</h3>

    <p>Email: prateek@example.com</p>
    <p>Skills: AWS, Docker, Terraform, Python, ELK Stack</p>
</body>
</html>


nano Dockerfile:
FROM nginx:latest

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80


nano docker-compose.yml:
services:
  website:
    image: myprofile
    container_name: myprofile-container
    ports:
      - "80:80"

<img width="1918" height="957" alt="image" src="https://github.com/user-attachments/assets/222ff791-397d-4063-bac7-bdab217b9877" />

