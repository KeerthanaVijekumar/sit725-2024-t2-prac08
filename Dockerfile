FROM node:18.17.1
 
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci --omit=dev
COPY . .
expose 3040
CMD npm start


#Follow below steps to Execute the Application via Docker

# Method 1 : Using docker hub Without Cloning the Project:

#1.Install Docker desktop and Ensure Docker is Running
# Verify that Docker Desktop is installed on your machine, as it includes Docker. If not, download Docker Desktop and install it, Ensure it is running.

# 2. Pull the Docker Image - Open your terminal or command prompt and run the following command to pull the Docker image from Docker Hub:
# docker pull s224719679/keerthanapawfinders

# 3. Run the Docker Container
# docker run -p 3041:3041 s224719679/keerthanapawfinders

# 4. Access the Application
# http://localhost:3041

# -------------------------------------------------------------------------------------------------------------------------------

# Method 2 : Using Docker Compose 

#1.Install Docker desktop and Ensure Docker is Running
# Verify that Docker Desktop is installed on your machine, as it includes Docker Compose. If not, download Docker Desktop and install it, Ensure it is running.

# 2. Clone the project locally
# git clone https://github.com/KeerthanaVijekumar/sit725-2024-t2-prac08.git

# 3. Navigate to the Directory Containing the docker-compose.yaml File
# cd /"path to docker-compose-file"

# 4. Pull the Docker Image - Docker Compose will pull the necessary images, but can manually pull them using the following command to save time:
# docker pull s224719679/keerthanapawfinders

# 4. Run the Docker Compose Command:
# docker-compose up

# This will:
#     Pull the images (if not already present).
#     Create the necessary containers.
#     Set up any networks or volumes required by the services.
#     Launch the application and any other services (e.g., MongoDB) specified in the docker-compose.yaml file.

# 5. Access the Application
# http://localhost:3041

# 6. Stopping the Containers:
#     docker-compose down
