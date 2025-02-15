#! /bin/sh
echo "\n-------------------------------------------------------------------------------"
echo "\n\tStarting the appliocation"
echo "-------------------------------------------------------------------------------------------"
if [ -d "experiment-flask-fullstack-setup" ]; then
    #activate venv
    experiment-flask-fullstack-setup/Scripts/activate
    #set the flask environment variable
    export FLASK_ENV=development
    #run the application
    python main.py
    #deactivate the virtual environment
    deactivate
else
    echo "please run setup first"
fi

echo "application execution completed"