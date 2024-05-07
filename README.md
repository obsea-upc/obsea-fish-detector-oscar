# OBSEA fish detector for OSCAR #

Simple example on how to containerize a fish detector model trained with data from [OBSEA underwater observatory](https://obsea.es).

## Run the fish detector ##
To run this script, just two steps are required:

1. Clone this repository:
```
git clone https://github.com/obsea-upc/obsea-fish-detector-oscar <your_folder>
```
2. Install the requirements
```bash
pip3 install -r requirements
```

3. Run the script with example data:
```bash
python3 fish_detector.py -i input -o output
```

## Run the fish detector as Docker application##

1. Build the docker container (this may take several minutes)
```bash
docker build . -t fishdetector
```

2. Run the fish detector application inside a docker container
```bash
docker run --rm -v ./input:/input  -v ./output:/output fishdetector python3 fish_detector.py -i /input -o /output
```

The previous command mounts the `input` and `output` directories in the host filesystem to the container root ('/input'  and '/output) and runs the fish detector python script. The results will be storedin `output` folder in current path. The `--rm` path forces the removal of the container once the task is done.

 

### Contact info ###
* **author**: Enoc Martínez  
* **version**: 0.0.1  
* **organization**: Universitat Politècnica de Catalunya (UPC)  
* **contact**: enoc.martinez@upc.edu