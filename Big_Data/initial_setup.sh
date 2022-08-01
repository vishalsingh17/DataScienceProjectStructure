#!/bin/bash
echo [$(date)] : "STARTING INITIAL SETUP"
export _VERSION_=3.9

echo [$(date)] : "PROJECT DIRECTORY NAME"
read project_name
export project_name_=$project_name

echo [$(date)] : "CREATING PROJECT STRUCTURE"

echo [$(date)] : "CREATING DATA EXTRACTION"
mkdir ${project_name_}_data_extraction
touch ${project_name_}_data_extraction/__init__.py ${project_name_}_data_extraction/data_extraction.py

echo [$(date)] : "CREATING DATA VALIDATION"
mkdir ${project_name_}_data_validation
touch ${project_name_}_data_validation/__init__.py ${project_name_}_data_validation/data_validation.py

echo [$(date)] : "CREATING DATA TRANSFORMATION"
mkdir ${project_name_}_data_transformation
touch ${project_name_}_data_transformation/__init__.py ${project_name_}_data_transformation/data_transformation.py

echo [$(date)] : "CREATING DATA LOADING"
mkdir ${project_name_}_data_loading
touch ${project_name_}_data_loading/__init__.py ${project_name_}_data_loading/data_loading.py

echo [$(date)] : "CREATING TESTING LAYER"
mkdir ${project_name_}_testing
touch ${project_name_}_testing/__init__.py ${project_name_}_testing/tests.py

echo [$(date)] : "CREATING LOGGING LAYER"
mkdir ${project_name_}_logging
touch ${project_name_}_logging/__init__.py ${project_name_}_logging/logging.py ${project_name_}_logging/logs.txt

echo [$(date)] : "CREATING UTILITY LAYER"
mkdir ${project_name_}_utils
touch ${project_name_}_utils/__init__.py ${project_name_}_utils/utils.py

echo [$(date)] : "CREATING EXCEPTION LAYER"
mkdir ${project_name_}_exception
touch ${project_name_}_exception/__init__.py ${project_name_}_exception/exception_handler.py

echo [$(date)] : "CREATING ORCHESTRATOR LAYER"
mkdir ${project_name_}_orchestrator
touch ${project_name_}_orchestrator/__init__.py ${project_name_}_orchestrator/orchestration.py

echo [$(date)] : "CREATING NOTEBOOK FOLDER"
mkdir ${project_name_}_Notebooks

echo [$(date)] : "CREATING API ENDPOINT !"
touch app.py

echo [$(date)] : "CREATING CONDA ENVIRONMENT"
conda create --prefix ./env python=${_VERSION_} -y
source activate ./env

echo [$(date)] : "CREATE REQUIREMENTS TEXT FILE"
touch requirements.txt

echo [$(date)]: "CREATING DOCKER FILE"
touch dockerfile

echo [$(date)]: "CREATING ADDITIONAL FILES"
touch config.yaml

echo [$(date)] : "END"
