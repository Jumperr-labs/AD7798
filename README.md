# Jumper Virtual Lab Peripheral Model - AD7798
This repo contains AD7798 peripheral to use with [Jumper Virtual Lab](https://vlab.jumper.io).

For more information, visit [the docs](https://docs.jumper.io).

### Prerequisites
- Ubuntu 16.04
- GCC and Make: `apt install build-essential`
- [Jumper Virtual Lab](https://docs.jumper.io)

## Usage
- Fork [this repository](https://github.com/Jumperr-labs/AD7798) on GitHub and clone the new repository onto your Linux machine.
- Make sure you have the build prerequisites by running the following:
  
  ```bash
  cd /PATH/TO/AD7798/REPO
  make
  ```

- If everything worked as expected, you should now have a "_build/AD7798.so" file.
- Copy the .so file from the "_build/" directory to your Jumper Virtual Lab working directory (same one as the "board.json" file).
- Add the component to your "board.json" file:

  ```json
  {
    "name": "AD7798",
    "id": 2,
    "type": "Peripheral",
    "file": "AD7798.so",
    "config": {
        "pins": {
            "cs": 29,
            "sck": 3,
            "si": 4,
            "so": 28
        },
	"generators": {
	    "conversion": 1
	}
      }
  }
  ```

## License
Licensed under the Apache License, Version 2.0. See the LICENSE file for more information
