
find . -name '*.pyc' -exec rm -f {} +
find . -name '*.pyo' -exec rm -f {} +
find . -name '__pycache__' -exec rm -fr {} +
find . -name 'dump.rdb' -exec rm -f {} +