# Setup
## Git

```
git clone https://github.com/Toth-Technology/rad-i && cd rad-i
```

## Docker

Install docker, then run:
```
docker run -it -p 8888:8888 -v ${pwd}:/root nathanhillyer/ml-base jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token= --notebook-dir='/root'
```

Open in browser:
```
localhost:8888
```

You are now ready to execute code within the Jupyter environment.
