# Bill of Materials

This Bill of Materials is incomplete at the moment and is designed to give a vague indication of the parts I intend to use. As I haven't actually built this yet, I can't guarantee the parts mentioned here work as intended with this setup. This project has been designed to allow for the use of any number of jet drive units next to each other, so parts are divided in to per drive unit and per whole setup. It is possible for both clockwise and anticlockwise propellers to be used if the nozzle is reflected when printing, since the stators are directional in this part.

## For Jet Units alone
### 3D Printed components from this repository
#### Per Whole Setup
* 2 x **fairings.scad**, one reflected
#### Per Drive Unit
* optional - 1 x **batterybox.scad** - for using pairs of 3s 5000 mAh batteries
* 1 x **motormount.scad**
* 1 x front half of **intake.scad** - see file for details on how to select halves
* 1 x rear half of **intake.scad**
* 1 x **propspace.scad**
* 1 x **nozzle.scad** - reflect based on direction of propeller rotation, nozzle exit diameter adjustable to suit application
### Electrical components
#### Per Whole Setup
* 1 x **6S LiPo Battery** of your choice, 5000 mAh per drive unit and upwards recommended, check C rating to ensure it can deliver the required current.
  * Example: [Multistar High Capacity 20000mAh 6S 10C Multi-Rotor Lipo Pack](https://hobbyking.com/en_us/multistar-high-capacity-6s-20000mah-multi-rotor-lipo-pack.html)
* 1 x **LiPo charger**, of your choice, must be suitable for battery voltage and your regional plug type
  * Example: [IMAX B6AC V2 Professional Balance Charger/Discharger](https://hobbyking.com/en_us/imax-b6ac-v2-professional-balance-charger-discharger-uk-plug.html)
* **Some form of control mechanism**, such as an RC receiver, or an arduino, or something else entirely
#### Per Drive Unit
* 1 x **Brushless ESC**, Capable of using 6S batteries at your desired current.
  * Example: [HobbyKing Red Brick 125A ESC (Opto) Ver 2.0](https://hobbyking.com/en_us/hobbyking-red-brick-125a-esc-opto-version-11.html)
* 1 x **Brushless Drive Motor**, 6S, this setup was designed to use 3kw inrunner motors at about a 2000kv speed.
  * Example: [Turnigy XK-4074 2000KV Brushless Inrunner](https://hobbyking.com/en_us/turnigy-xk-4074-2000kv-brushless-inrunner.html)
### Hardware
