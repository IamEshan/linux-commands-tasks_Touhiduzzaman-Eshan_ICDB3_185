
# Linux Command Outputs


### File System Navigation
- **Listing contents of the home directory**:

```bash
    ls ~
```
![img1](images/1.png)

- **Changing directory to /var/log and listing contents**:
```bash
    cd  /var/log &&ls
```
![img2](images/2.png)


- **Finding path to bash executable**:
 ```bash
    which bash
```
![img3](images/3.png)


- **Find current shell**:
 ```bash
    echo $SHELL
```
![img4](images/4.png)



### File and Directory Operations

- **Creating directory and files**:
```bash
    mkdir linux_fundamentals
```
![img5](images/5.png)


- **Inside linux_fundamentals, create a subdirectory named scripts.**:
```bash
    cd linux_fundamentals
    mkdir scripts
    ls
```
![img6](images/6.png)


- **Create an empty file named example.txt inside the linux_fundamentals directory..**:
```bash
    touch example.txt
```
![img7](images/7.png)



- **Copy example.txt to the scripts directory.**:
```bash
    cp example.txt scripts/
```
![img8](images/8.png)


- **Move example.txt from linux_fundamentals to linux_fundamentals/backup.
Permissions.**:
```bash
    mkdir backup
    mv example.txt backup/
```
![img9](images/9.png)


- **Change the permissions of example.txt to read and write for the owner, and read-only for the group and others.**:
```bash
  cd backup/
  chmod 644 example.txt
  ls -l
```
![img10](images/10.png)

### File Modification

- **Create a file named example.txt in your home directory.**:
```bash
touch example.txt
```
![img11](images/11.png)

- **Change the owner of example.txt to a user named student.**:
```bash
sudo useradd -m student
sudo chown student example.txt
```
![img12](images/12.png)


- **Change the group of example.txt to a group named students.**:
```bash
sudo groupadd students
sudo chgrp students example.txt
ls -l example.txt
```
![img13](images/13.png)

### Ownership


- **Create a directory named project in your home directory.**:
```bash
mkdir project
ls
```
![img14](images/14.png)


- **Create a file named report.txt inside the project directory.**:
```bash
touch  ~/project/report.txt
```

![img15](images/15.png)



- **Set the permissions of report.txt to read and write for the owner, and read-only for the group and others and Set the permissions of the project directory to read, write, and execute for the.**:
```bash
chmod 644 ~/project/report.txt
chmod 755 project/
```

![img16](images/16.png)


- **Verify the changes using appropriate commands**:
```bash
ls -l ~/project/report.txt
ls -ld project/
```

![img17](images/17.png)


### User add/modify

- **Create a new user named developer**:
```bash
sudo useradd developer
```

![img18](images/18.png)



- **Set the home directory of the user developer to /home/developer_home**:
```bash
sudo usermod -d /home/developer_home -m developer
```

![img19](images/19.png)
![img20](images/20.png)


- **Verify the new user's information.**:
```bash
cat /etc/passwd | grep  developer

```

![img21](images/21.png)

- **Change the username of the user developer to devuser.**:
```bash

sudo usermod -l devuser developer

```

![img22](images/22.png)



- **Add devuser to a group named devgroup.**:
```bash

sudo groupadd devgroup
sudop usermod -aG devgroup devuser

```

![img23](images/23.png)


- **Set the password of devuser to devpass. ( hint: use passwd command. Run passwd --help to see available options)**:
```bash

sudo passwd devuser

```

![img24](images/24.png)


### Hard/Soft Link

- **Create a file named original.txt in your home directory.**:
```bash

touch ~/original.txt

```

![img25](images/25.png)



- **Create a symbolic link named softlink.txt pointing to original.txt.**:
```bash

ln -s original.txt softlink.txt

```

![img26](images/26.png)


- **Verify the symbolic link and ensure it points to the correct file..**:
```bash

ls -l softlink

```

![img27](images/27.png)



- **Delete the original file original.txt and observe the status of the symbolic link.**:
```bash

rm original.txt
ls -l softlink.txt
```

![img28](images/28.png)


- **Create a file named datafile.txt in your home directory..**:
```bash

touch ~/datafile.txt
```

![img29](images/29.png)



- **Create a hard link named hardlink.txt pointing to datafile.txt.**:
```bash

ln datafile.txt hardlink.txt
ls -li datafile.txt hardlink.txt
```

![img30](images/30.png)

- **Delete the original file datafile.txt and observe the status of the hard link.t.**:
```bash

rm datafile.txt
ls -l hardlink.txt
```

![img31](images/31.png)


### Package installation

The gcloud CLI is available in package format for installation on Debian and Ubuntu systems. This package contains the gcloud, gcloud alpha, gcloud beta, gsutil, and bq commands only. It doesn't include kubectl or the App Engine extensions required to deploy an application using gcloud commands. If you want these components, you must install them separately.


### Before you begin

Before you install the gcloud CLI, make sure that your operating system meets the following requirements:

- It is an Ubuntu release that hasn't reached end-of-life or a Debian stable release that hasn't reached end-of-life
- It has recently updated its packages

```bash

sudo apt-get update
```
- It has apt-transport-https and curl installed :
```bash

sudo apt-get install apt-transport-https ca-certificates gnupg curl
```

### Installation

Import the Google Cloud public key.
- For newer distributions (Debian 9+ or Ubuntu 18.04+) run the following command:

```bash

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
```

- For older distributions, run the following command:
 
```bash

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
```


- If your distribution's apt-key command doesn't support the --keyring argument, run the following command:
 
```bash

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
```

- If you can't get latest updates due to an expired key, obtain the latest apt-get.gpg key file.
- 

Add the gcloud CLI distribution URI as a package source.

- For newer distributions (Debian 9+ or Ubuntu 18.04+), run the following command:


```bash

echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
```

- For older distributions that don't support the signed-by option, run the following command:


```bash

echo "deb https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
```

Update and install the gcloud CLI:

```bash

sudo apt-get update && sudo apt-get install google-cloud-cli
```



Feel free to contribute and expand this cheat sheet as needed!
 

 


  



