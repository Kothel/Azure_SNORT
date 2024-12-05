# Azure_SNORT


# <h1>Azure SNORT Lab
  
  
## <a>Walkthrough </b>
###  1. First create snort VM
  - make vm
  - ![image](https://github.com/user-attachments/assets/cde4a592-a2b6-49ee-9258-b963dd2946b4)
  - connect through ssh in powershell
  - ![image](https://github.com/user-attachments/assets/0da8a6a6-daaa-4ed3-a56f-b79410a716e4)
  - install snort
  - ![image](https://github.com/user-attachments/assets/114a6538-cdc8-4314-84a3-58487754a5b9)
    ![image](https://github.com/user-attachments/assets/7d75339e-30ac-4e28-8b1e-84f891378bb2)



###  2. setup snort
  - move to snortconfig
  - ![image](https://github.com/user-attachments/assets/d1ee031a-3ba7-41e1-bab8-f11d4c1135fb)
  - change the ipvar home net to the subnet
  - ![image](https://github.com/user-attachments/assets/7cfd9ba9-d4f2-419f-a25d-b445731c3026)
  - enable logging with alertfast
  - ![image](https://github.com/user-attachments/assets/d2fd8990-7809-4849-b809-5228516c5fe9)
  - test if snort will run
  - ![image](https://github.com/user-attachments/assets/43a4054f-dca6-4142-b80d-95099a7d8a3f)
  - configure snort to run continously as a deamon
  - ![image](https://github.com/user-attachments/assets/d7426e51-30b1-4df2-afa7-f77a77ff4eea)
  - enable to script to run every minute via cron
  - ![image](https://github.com/user-attachments/assets/fa4a4cb2-313e-449f-9b1e-7ba687639ad4)
    ![image](https://github.com/user-attachments/assets/0378ef68-a1b1-4a2b-9289-1f4f5859c1f6)


###  3. Testing the snort alerts
  - hping to simulate malicous traffic
  - ![flood](https://github.com/user-attachments/assets/81a78c1f-8f36-40b8-b4bc-08d38365d263)
  - alert shows up
  - ![image](https://github.com/user-attachments/assets/7bfa86c5-7a52-448f-9ac0-631891def8b0)
  - check iptable to see rules have automatically been updated
  - ![image](https://github.com/user-attachments/assets/d632e793-aff1-4c82-8173-44a4da7317d1)

 



# Azure_Snort_Lab
