#! /bin/sh
echo "======================================================================"
echo "Welcome to to the setup. This will setup the local virtual env." 
echo "And then it will install all the required python libraries."
echo "You can rerun this without any issues."
echo "----------------------------------------------------------------------"
echo "creating .env and install using pip"
if [ -d  "experiment-flask-fullstack-setup" ]; then 
    echo "There is already venv created"
else
    echo "creating venv and installing dependencies"
    python3.12 -m venv experiment-flask-fullstack-setup
    # Activate virtual env
fi
if [ -d "experiment-flask-fullstack-setup" ]; then 
    if [ -f "experiment-flask-fullstack-setup/bin/activate" ]; then 
	    source experiment-flask-fullstack-setup/bin/activate
	else
	    sh experiment-flask-fullstack-setup/Scripts/activate 
	fi
fi
    # Upgrade the PIP
pip install --upgrade pip
pip install -r requirements.txt
    # Work done. so deactivate the virtual env
deactivate
echo "setup is complete now run the application"
