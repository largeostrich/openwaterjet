# Bill of Materials

This Bill of Materials is incomplete at the moment and is designed to give a vague indication of the parts I intend to use. As I haven't actually built this yet, I can't guarantee the parts mentioned here work as intended with this setup. This project has been designed to allow for the use of any number of jet drive units next to each other, so parts are divided in to per drive unit and per whole setup. It is possible for both clockwise and anticlockwise propellers to be used if the nozzle is reflected when printing, since the stators are directional in this part. Links are mostly for UK suppliers, other local suppliers may be available for other countries.

## For Jet Units alone
### 3D Printed Components from this Repository
#### Per Whole Setup
* 2 x **fairings.scad**, one reflected
#### Per Drive Unit
* optional - 1 x **batterybox.scad** - for using pairs of 3s 5000 mAh batteries
* 1 x **motormount.scad**, contains two sets of watercooling holes, remove one side if only one required
* 1 x front half of **intake.scad** - see file for details on how to select halves, contains two sets of watercooling holes, remove one side if only one required
* 1 x rear half of **intake.scad**
* 1 x **propspace.scad**
* 1 x **nozzle.scad** - reflect based on direction of propeller rotation, nozzle exit diameter adjustable to suit application
### Electrical Components
#### Per Whole Setup
* 1 x **6S LiPo Battery** of your choice, 5000 mAh per drive unit and upwards recommended, check C rating to ensure it can deliver the required current.
  * Example: [Multistar High Capacity 20000mAh 6S 10C Multi-Rotor Lipo Pack](https://hobbyking.com/en_us/multistar-high-capacity-6s-20000mah-multi-rotor-lipo-pack.html)
* 1 x **LiPo charger**, of your choice, must be suitable for battery voltage and your regional plug type
  * Example: [IMAX B6AC V2 Professional Balance Charger/Discharger](https://hobbyking.com/en_us/imax-b6ac-v2-professional-balance-charger-discharger-uk-plug.html)
* 1 x **UBEC** - powerful enough to drive your control system
  * Example: [King Kong 5v UBEC](https://hobbyking.com/en_us/kingkong-5v-3a-ubec.html)
* **Some form of control mechanism**, such as an RC receiver, or an arduino, or something else entirely
#### Per Drive Unit
* 1 x **Brushless ESC**, Capable of using 6S batteries at your desired current.
  * Example: [HobbyKing Red Brick 125A ESC (Opto) Ver 2.0](https://hobbyking.com/en_us/hobbyking-red-brick-125a-esc-opto-version-11.html)
* 1 x **Brushless Drive Motor**, 6S, this setup was designed to use 3kw inrunner motors at about a 2000kv speed.
  * Example: [Turnigy XK-4074 2000KV Brushless Inrunner](https://hobbyking.com/en_us/turnigy-xk-4074-2000kv-brushless-inrunner.html)
### Hardware
#### Per Whole Setup
* **Appropriate Amount of Wire**, check wire gauge is capable of carrying the required current
  * Example: [4 AWG Wire](http://uk.farnell.com/pro-power/pp001194/tri-rated-wire-25mm2-black-1m/dp/2528090?st=4AWG%20PTFE%20Hook%20Up%20Wire%20-%20Single%20Conductor)
* **Appropriate Amount of Cooling Tube**
  * Example: [5.5 mm OD tube](https://www.ebay.co.uk/itm/FUEL-LINE-PIPE-3MM-2-5MM-2MM-STRIMMER-CHAINSAW-LEAF-BLOWER-BRUSHCUTTER/182449552230?hash=item2a7ad73b66:m:mXECM6T0kKO2MeQfwsezfJg)
* 1 x **Male XT90 Battery Connector**, or otherwise, as appropriate
  * Example: [XT90 Male Connectors Bag](https://hobbyking.com/en_us/nylonxt90connectorsmale-5pcs-bag.html)
#### Per Drive Unit
* 1 x **Propshaft to Motor Coupling**, as appropriate to your motor
  * Example: [Graupner 5 mm coupling sleeve](https://www.cornwallmodelboats.co.uk/acatalog/couplings-solid.html)
* 1 x **225 mm x 5 mm Dog Drive Propshaft**
  * Example: [Ripmax Propeller Shaft w/Dog Drive 225mm](https://www.cornwallmodelboats.co.uk/acatalog/Ripmax-dog-drive.html)
* 1 x **76 mm Dog Drive Propeller** - Consider using counter rotating prop on one side when multiple units used together
  * Example: [Graupner 2317-76/76RH](https://modelmarinesupplies.co.uk/products.php?cat=37)
* 1 x **Motor Watercooling jacket** - of the correct size for your motor
  * Example: [Turnigy XK Brushless Motor Water Cooling Jacket 4074](https://hobbyking.com/en_us/turnigy-xk-brushless-motor-water-cooling-jacket-4074-40-50mm-purple.html)
* Optional - 1 x **ESC Cooling Plate**
  * Example: [ESC Cooling Plate](https://www.ebay.co.uk/i/263228653331?chn=ps&dispItem=1&adgroupid=53235196040&rlsatarget=pla-399367060529&abcId=1130076&adtype=pla&merchantid=116485770&poi=&googleloc=1006900&device=c&campaignid=1029943365&crdt=0)
* 4 x **M5 x 60 mm A4 Stainless Steel Machine Screws** - A2 Stainless may be fine for fresh water only applications
  * Example: [M5 x 60 mm, box of 50](http://uk.farnell.com/tr-fastenings/m5-60-m7a2mc-s50-but-3-0a-f/screw-button-head-hex-socket-m5/dp/2846552) - Your local marine chandlery may be able to supply small numbers of these for significantly less
* 14 x **M5 x 30 mm A4 Stainless Steel Machine Screws** - A2 Stainless may be fine for fresh water only applications
  * Example: [M5 x 30 mm, box of 50](http://uk.farnell.com/tr-fastenings/m5-30-m4a2mc-s50-but-t25/screw-button-head-hex-socket-m5/dp/2846531)
* 18 x **M5 Nylon Locking Nuts A4 Stainless Steel** - A2 Stainless may be fine for fresh water only applications
  * Example: [M5 Locking Nuts, box of 50](http://uk.farnell.com/tr-fastenings/m5-n5a4-s50/nyloc-nut-s-s-a4-m5/dp/1420449)
* Appropriate number of **Motor Mounting Screws** - these may be supplied with the motor
## For Electric Surfboard
At this point, this document becomes more vague, since these bits are way more application specific. This is designed to use 2 drive units.
### 3D Printed Components from this Repository
* 1 x **throttletriggermount.scad**
* 1 x **throttlecontrol.scad**
* 1 x **potentiometerhead.scad**
### Electrical Components
* 1 x **Slide Potentiometer** - about 30 mm of travel ideally
  * Example: [Slide Potentiometer](https://www.mouser.co.uk/ProductDetail/ALPS/RS301111AA06?qs=sGAEpiMZZMtC25l1F4XBUzlG%2f5OCV2rcfhtmkEc49uU%3d)
* 4 x **Thermistors** - for measuring water temperatures
  * Example: [Thermistors](http://cpc.farnell.com/vishay/ntcle100e3472jb0/thermistor-ntc/dp/SN36241) 
* 1 x **Arduino Uno** - or alternative, as control and monitoring system - you may want some status LEDs etc to go with this
  * Example: [Genuino Uno](https://store.arduino.cc/genuino-uno-rev3)
### Hardware
* 1 x **Bike Brake Lever** - About 30 mm of cable travel ideally
* 1 x **Bike Brake Cable** - At least 1.5 metres
  * Example: [Brake Cable](https://smile.amazon.co.uk/Clarks-Universal-Galvanised-Brake-Casing/dp/B005PVLQ4S/ref=sr_1_7?ie=UTF8&qid=1523113931&sr=8-7&keywords=brake+cable)
* 1 x **Surf Board** - which you don't mind cutting up
* 1 x **Waterproof Compartment** - idk maybe this could be made out of marine ply and epoxy?
* 2 x **Foot Straps** - the position of these will depend on things like your body weight and what board you're using
  * Example: [Windsurf Foot Straps](https://www.wetsuitoutlet.co.uk/2018-mystic-windsurf-footstrap-black-180127-p-25116.html?source=googleshopping&gclid=CjwKCAjw-6bWBRBiEiwA_K1ZDX3pS_yRMumHBa3RRMhJTLrzfQuqTKtwrsD0yZOBRDTshWrR3c5_ThoCFWQQAvD_BwE)
* **Sealant**
  * Example: [Sikaflex 292i](https://www.sealantsandtoolsdirect.co.uk/manufacturers/sika_sikaflex_marine/sikaflex_sealants_and_adhesives/sika_sikaflex_292_i_marine_high_strength_adhesive_white_P27604.html)
