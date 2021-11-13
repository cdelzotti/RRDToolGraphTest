# RRDTool Test Lab

This is a simple test environment for your RRDTool graphs.

## Requirements

You must have RRDTool and Tstat (http://tstat.polito.it/software.php) installed.

## How to use

Simply write your RRDTool graph instruction in `draw.sh` and run

```bash
sudo ./runCapture.sh
```

It will start recording network traffic on your computer and execute your graph command every second.