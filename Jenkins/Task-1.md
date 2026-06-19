# Jenkins Setup on AWS EC2

## Step 1: Update System

```bash
sudo apt update
```

---

## Step 2: Install Java 17

```bash
sudo apt install openjdk-17-jdk -y
```

Verify Java:

```bash
java -version
```

---

## Step 3: Install Required Utilities

```bash
sudo apt install gnupg curl net-tools -y
```

---

## Step 4: Download Jenkins Package

```bash
wget https://get.jenkins.io/debian-stable/jenkins_2.516.1_all.deb
```

Verify download:

```bash
ls
```

---

## Step 5: Install Jenkins Package

```bash
sudo dpkg -i jenkins_2.516.1_all.deb
```

---

## Step 6: Fix Missing Dependencies

```bash
sudo apt install net-tools -y
```

```bash
sudo apt --fix-broken install -y
```

If required:

```bash
sudo dpkg -i jenkins_2.516.1_all.deb
```

---

## Step 7: Start Jenkins Service

Reload systemd:

```bash
sudo systemctl daemon-reload
```

Enable Jenkins:

```bash
sudo systemctl enable jenkins
```

Start Jenkins:

```bash
sudo systemctl start jenkins
```

Check Jenkins status:

```bash
sudo systemctl status jenkins
```

---

## Step 8: Obtain Initial Admin Password

```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

---

<img width="1918" height="950" alt="image" src="https://github.com/user-attachments/assets/ad2b1818-dc40-4a86-8ac7-aa5f3272f15a" />



<img width="1918" height="975" alt="image" src="https://github.com/user-attachments/assets/17f2d91b-746f-4750-b753-33505bd8551f" />




<img width="1918" height="955" alt="image" src="https://github.com/user-attachments/assets/3014d121-9272-4890-8108-50cd12ab9969" />




<img width="1918" height="967" alt="image" src="https://github.com/user-attachments/assets/d3ce2a55-b976-4892-846f-cf1c42e7d504" />




<img width="1917" height="970" alt="Screenshot 2026-06-19 091013" src="https://github.com/user-attachments/assets/139f39e6-ea94-4748-b7f9-c1a7584f7a12" />



<img width="1917" height="960" alt="Screenshot 2026-06-19 091137" src="https://github.com/user-attachments/assets/4c1cc330-e115-4263-b707-5ca562b2d66e" />


<img width="1917" height="960" alt="Screenshot 2026-06-19 091253" src="https://github.com/user-attachments/assets/5cf70533-e887-4020-ba79-c2b575a2ec1b" />



<img width="1917" height="967" alt="Screenshot 2026-06-19 091324" src="https://github.com/user-attachments/assets/ce92f632-78cf-4212-a5aa-d34a33d56013" />



<img width="1902" height="962" alt="Screenshot 2026-06-19 091707" src="https://github.com/user-attachments/assets/6f464347-06bd-4135-a158-5b4edf8a260e" />




<img width="1917" height="911" alt="Screenshot 2026-06-19 091758" src="https://github.com/user-attachments/assets/bdfd6ac5-56af-48d9-90a0-c6be451f14b9" />




