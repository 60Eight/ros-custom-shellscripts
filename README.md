Custom patches for use with [rattlesnakeos-stack](https://github.com/dan-v/rattlesnakeos-stack) to build [RattleSnakeOS](https://github.com/RattlesnakeOS).  

## How to
Add the following to end of your `rattlesnakeos-stack` config file.
```
...

[[custom-scripts]]
  repo = "https://github.com/60Eight/ros-custom-shellscripts"
  scripts = [
      "00001-custom-boot-animation.sh"
  ]

...
  
```

## References:
- https://github.com/dan-v/rattlesnakeos-stack#patches-and-scripts
