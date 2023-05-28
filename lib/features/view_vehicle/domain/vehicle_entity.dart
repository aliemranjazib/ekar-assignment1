// import 'package:equatable/equatable.dart';

// class VehicleEntity extends Equatable {
//   bool? success;
//   Input? input;
//   Attributes? attributes;
//   List<Colors>? colors;
//   Equipment? equipment;
//   List<Warranties>? warranties;
//   String? timestamp;

//   @override
//   List<Object?> get props => [];
// }

// class Warranties {
//   String? type;
//   String? miles;
//   String? months;

//   Warranties({this.type, this.miles, this.months});
// }

// class Equipment {
//   String? s4wdAwd;
//   String? absBrakes;
//   String? adjustableFootPedals;
//   String? airConditioning;
//   String? alloyWheels;
//   String? amFmRadio;
//   String? automaticHeadlights;
//   String? automaticLoadLeveling;
//   String? cargoAreaCover;
//   String? cargoAreaTiedowns;
//   String? cargoNet;
//   String? cassettePlayer;
//   String? cdChanger;
//   String? cdPlayer;
//   String? childSafetyDoorLocks;
//   String? chromeWheels;
//   String? cruiseControl;
//   String? daytimeRunningLights;
//   String? deepTintedGlass;
//   String? driverAirbag;
//   String? driverMultiAdjustablePowerSeat;
//   String? dvdPlayer;
//   String? electrochromicExteriorRearviewMirror;
//   String? electrochromicInteriorRearviewMirror;
//   String? electronicBrakeAssistance;
//   String? electronicParkingAid;
//   String? firstAidKit;
//   String? fogLights;
//   String? frontAirDam;
//   String? frontCooledSeat;
//   String? frontHeatedSeat;
//   String? frontPowerLumbarSupport;
//   String? frontPowerMemorySeat;
//   String? frontSideAirbag;
//   String? frontSideAirbagWithHeadProtection;
//   String? frontSplitBenchSeat;
//   String? fullSizeSpareTire;
//   String? genuioodTrim;
//   String? glassRearWindowOnConvertible;
//   String? heatedExteriorMirror;
//   String? heatedSteeringWheel;
//   String? highIntensityDischargeHeadlights;
//   String? intervalWipers;
//   String? keylessEntry;
//   String? leatherSeat;
//   String? leatherSteeringWheel;
//   String? limitedSlipDifferential;
//   String? loadBearingExteriorRack;
//   String? lockingDifferential;
//   String? lockingPickupTruckTailgate;
//   String? manualSunroof;
//   String? navigationAid;
//   String? passengerAirbag;
//   String? passengerMultiAdjustablePowerSeat;
//   String? pickupTruckBedLiner;
//   String? pickupTruckCargoBoxLight;
//   String? powerAdjustableExteriorMirror;
//   String? powerDoorLocks;
//   String? powerSlidingSideVanDoor;
//   String? powerSunroof;
//   String? powerTrunkLid;
//   String? powerWindows;
//   String? rainSensingWipers;
//   String? rearSpoiler;
//   String? rearWindowDefogger;
//   String? rearWiper;
//   String? remoteIgnition;
//   String? removableTop;
//   String? runFlatTires;
//   String? runningBoards;
//   String? secondRowFoldingSeat;
//   String? secondRowHeatedSeat;
//   String? secondRowMultiAdjustablePowerSeat;
//   String? secondRowRemovableSeat;
//   String? secondRowSideAirbag;
//   String? secondRowSideAirbagWithHeadProtection;
//   String? secondRowSoundControls;
//   String? separateDriverFrontPassengerClimateControls;
//   String? sideHeadCurtainAirbag;
//   String? skidPlate;
//   String? slidingRearPickupTruckWindow;
//   String? splashGuards;
//   String? steelWheels;
//   String? steeringWheelMountedControls;
//   String? subwoofer;
//   String? tachometer;
//   String? telematicsSystem;
//   String? telescopicSteeringColumn;
//   String? thirdRowRemovableSeat;
//   String? tiltSteering;
//   String? tiltSteeringColumn;
//   String? tirePressureMonitor;
//   String? towHitchReceiver;
//   String? towingPreparationPackage;
//   String? tractionControl;
//   String? tripComputer;
//   String? trunkAntiTrapDevice;
//   String? vehicleAntiTheft;
//   String? vehicleStabilityControlSystem;
//   String? voiceActivatedTelephone;
//   String? windDeflectorForConvertibles;
//   Equipment({
//     this.s4wdAwd,
//     this.absBrakes,
//     this.adjustableFootPedals,
//     this.airConditioning,
//     this.alloyWheels,
//     this.amFmRadio,
//     this.automaticHeadlights,
//     this.automaticLoadLeveling,
//     this.cargoAreaCover,
//     this.cargoAreaTiedowns,
//     this.cargoNet,
//     this.cassettePlayer,
//     this.cdChanger,
//     this.cdPlayer,
//     this.childSafetyDoorLocks,
//     this.chromeWheels,
//     this.cruiseControl,
//     this.daytimeRunningLights,
//     this.deepTintedGlass,
//     this.driverAirbag,
//     this.driverMultiAdjustablePowerSeat,
//     this.dvdPlayer,
//     this.electrochromicExteriorRearviewMirror,
//     this.electrochromicInteriorRearviewMirror,
//     this.electronicBrakeAssistance,
//     this.electronicParkingAid,
//     this.firstAidKit,
//     this.fogLights,
//     this.frontAirDam,
//     this.frontCooledSeat,
//     this.frontHeatedSeat,
//     this.frontPowerLumbarSupport,
//     this.frontPowerMemorySeat,
//     this.frontSideAirbag,
//     this.frontSideAirbagWithHeadProtection,
//     this.frontSplitBenchSeat,
//     this.fullSizeSpareTire,
//     this.genuioodTrim,
//     this.glassRearWindowOnConvertible,
//     this.heatedExteriorMirror,
//     this.heatedSteeringWheel,
//     this.highIntensityDischargeHeadlights,
//     this.intervalWipers,
//     this.keylessEntry,
//     this.leatherSeat,
//     this.leatherSteeringWheel,
//     this.limitedSlipDifferential,
//     this.loadBearingExteriorRack,
//     this.lockingDifferential,
//     this.lockingPickupTruckTailgate,
//     this.manualSunroof,
//     this.navigationAid,
//     this.passengerAirbag,
//     this.passengerMultiAdjustablePowerSeat,
//     this.pickupTruckBedLiner,
//     this.pickupTruckCargoBoxLight,
//     this.powerAdjustableExteriorMirror,
//     this.powerDoorLocks,
//     this.powerSlidingSideVanDoor,
//     this.powerSunroof,
//     this.powerTrunkLid,
//     this.powerWindows,
//     this.rainSensingWipers,
//     this.rearSpoiler,
//     this.rearWindowDefogger,
//     this.rearWiper,
//     this.remoteIgnition,
//     this.removableTop,
//     this.runFlatTires,
//     this.runningBoards,
//     this.secondRowFoldingSeat,
//     this.secondRowHeatedSeat,
//     this.secondRowMultiAdjustablePowerSeat,
//     this.secondRowRemovableSeat,
//     this.secondRowSideAirbag,
//     this.secondRowSideAirbagWithHeadProtection,
//     this.secondRowSoundControls,
//     this.separateDriverFrontPassengerClimateControls,
//     this.sideHeadCurtainAirbag,
//     this.skidPlate,
//     this.slidingRearPickupTruckWindow,
//     this.splashGuards,
//     this.steelWheels,
//     this.steeringWheelMountedControls,
//     this.subwoofer,
//     this.tachometer,
//     this.telematicsSystem,
//     this.telescopicSteeringColumn,
//     this.thirdRowRemovableSeat,
//     this.tiltSteering,
//     this.tiltSteeringColumn,
//     this.tirePressureMonitor,
//     this.towHitchReceiver,
//     this.towingPreparationPackage,
//     this.tractionControl,
//     this.tripComputer,
//     this.trunkAntiTrapDevice,
//     this.vehicleAntiTheft,
//     this.vehicleStabilityControlSystem,
//     this.voiceActivatedTelephone,
//     this.windDeflectorForConvertibles,
//   });
// }

// class Input {
//   String? key;
//   String? vin;
//   Input({this.key, this.vin});
// }

// class Attributes {
//   String? year;
//   String? make;
//   String? model;
//   String? trim;
//   String? style;
//   String? type;
//   String? size;
//   String? category;
//   String? madeIn;
//   String? madeInCity;
//   String? doors;
//   String? fuelType;
//   String? fuelCapacity;
//   String? cityMileage;
//   String? highwayMileage;
//   String? engine;
//   String? engineSize;
//   String? engineCylinders;
//   String? transmission;
//   String? transmissionShort;
//   String? transmissionType;
//   String? transmissionSpeeds;
//   String? drivetrain;
//   String? antiBrakeSystem;
//   String? steeringType;
//   String? curbWeight;
//   String? grossVehicleWeightRating;
//   String? overallHeight;
//   String? overallLength;
//   String? overallWidth;
//   String? wheelbaseLength;
//   String? standardSeating;
//   String? invoicePrice;
//   String? deliveryCharges;
//   String? manufacturerSuggestedRetailPrice;
//   String? productionSeqNumber;
//   String? frontBrakeType;
//   String? rearBrakeType;
//   String? turningDiameter;
//   String? frontSuspension;
//   String? rearSuspension;
//   String? frontSpringType;
//   String? rearSpringType;
//   String? tires;
//   String? frontHeadroom;
//   String? rearHeadroom;
//   String? frontLegroom;
//   String? rearLegroom;
//   String? frontShoulderRoom;
//   String? rearShoulderRoom;
//   String? frontHipRoom;
//   String? rearHipRoom;
//   List<String>? interiorTrim;
//   List<String>? exteriorColor;
//   String? curbWeightManual;
//   String? groundClearance;
//   String? trackFront;
//   String? trackRear;
//   String? cargoLength;
//   String? widthAtWheelwell;
//   String? widthAtWall;
//   String? depth;
//   String? optionalSeating;
//   String? passengerVolume;
//   String? cargoVolume;
//   String? standardTowing;
//   String? maximumTowing;
//   String? standardPayload;
//   String? maximumPayload;
//   String? maximumGvwr;
//   Attributes({
//     this.year,
//     this.make,
//     this.model,
//     this.trim,
//     this.style,
//     this.type,
//     this.size,
//     this.category,
//     this.madeIn,
//     this.madeInCity,
//     this.doors,
//     this.fuelType,
//     this.fuelCapacity,
//     this.cityMileage,
//     this.highwayMileage,
//     this.engine,
//     this.engineSize,
//     this.engineCylinders,
//     this.transmission,
//     this.transmissionShort,
//     this.transmissionType,
//     this.transmissionSpeeds,
//     this.drivetrain,
//     this.antiBrakeSystem,
//     this.steeringType,
//     this.curbWeight,
//     this.grossVehicleWeightRating,
//     this.overallHeight,
//     this.overallLength,
//     this.overallWidth,
//     this.wheelbaseLength,
//     this.standardSeating,
//     this.invoicePrice,
//     this.deliveryCharges,
//     this.manufacturerSuggestedRetailPrice,
//     this.productionSeqNumber,
//     this.frontBrakeType,
//     this.rearBrakeType,
//     this.turningDiameter,
//     this.frontSuspension,
//     this.rearSuspension,
//     this.frontSpringType,
//     this.rearSpringType,
//     this.tires,
//     this.frontHeadroom,
//     this.rearHeadroom,
//     this.frontLegroom,
//     this.rearLegroom,
//     this.frontShoulderRoom,
//     this.rearShoulderRoom,
//     this.frontHipRoom,
//     this.rearHipRoom,
//     this.interiorTrim,
//     this.exteriorColor,
//     this.curbWeightManual,
//     this.groundClearance,
//     this.trackFront,
//     this.trackRear,
//     this.cargoLength,
//     this.widthAtWheelwell,
//     this.widthAtWall,
//     this.depth,
//     this.optionalSeating,
//     this.passengerVolume,
//     this.cargoVolume,
//     this.standardTowing,
//     this.maximumTowing,
//     this.standardPayload,
//     this.maximumPayload,
//     this.maximumGvwr,
//   });
// }

// class Colors {
//   String? category;
//   String? name;

//   Colors({this.category, this.name});
// }
