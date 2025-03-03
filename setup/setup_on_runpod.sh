#! /bin/bash

# git clone https://${github_personal_access_token}@github.com/boun-tabi-LMG/blt.git

# git checkout $branch_name

root_dir=/workspace/blt

# should be in the root_dir
cd $root_dir

python -m venv blt_env
source blt_env/bin/activate

pip install torch==2.5.0 xformers --index-url https://download.pytorch.org/whl/cu121
pip install ninja
pip install -r blt/requirements.txt