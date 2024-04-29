Content.makeFrontInterface(800, 420);;


// Create a typed Audio Sample Script Reference with right click on the Convolution Module
const var ConvolutionReverb1 = Synth.getAudioSampleProcessor("Convolution Reverb1");

// load all Audio Files from the AudioFiles Folder into the Pool
Engine.loadAudioFilesIntoPool();

// set a new file
ConvolutionReverb1.setFile("{PROJECT_FOLDER}FINE_ARTS_IR.wav");



//Audio settings interface
const var Panel6 = Content.getComponent("Panel6");
const var Button3 = Content.getComponent("Button3");

inline function onButton3Control(component, value)
{
	Panel6.showControl(value);
};
Content.getComponent("Button3").setControlCallback(onButton3Control);


//MIDI settings interface
const var Panel7 = Content.getComponent("Panel7");
const var Button4 = Content.getComponent("Button4");

inline function onButton4Control(component, value)
{
	Panel7.showControl(value);
};
Content.getComponent("Button4").setControlCallback(onButton4Control);



//Chownify button namespace
namespace ChownifyButton
{

	//Chownify Image Loader (button2)
	const buttonLaf = Content.createLocalLookAndFeel();

	buttonLaf.loadImage("{PROJECT_FOLDER}ButtonOnButtonOff.jpg", "buttonOnOff");

	buttonLaf.registerFunction("drawToggleButton", function(g, obj)
{
	var a = obj.area;
	
	g.drawImage("buttonOnOff", a, 0, 300 * obj.value);
});	

	//button2 (chownify)
	const var Button2 = Content.getComponent("Button2");
	Button2.setLocalLookAndFeel(buttonLaf);
}



//Sustain Indicator Button Namespace
namespace SustainIndicatorButton
{

	const buttonLaf = Content.createLocalLookAndFeel();
	
	buttonLaf.loadImage("{PROJECT_FOLDER}SustainOnOff.jpg", "buttonSustainIndicator");
	
	buttonLaf.registerFunction("drawToggleButton", function(g, obj)
	{
		var b = obj.area;
		
		g.drawImage("buttonSustainIndicator", b, 0, 129 * obj.value);
	});
	
	//button1 (sustain indicator)
	const var Button1 = Content.getComponent("Button1");
	Button1.setLocalLookAndFeel(buttonLaf);
}


//License - Public Domain
//David Healey 2019, 2022

// knbFine
const var knbFine = Content.getComponent("Fine");
knbFine.set("text", "Fine");
knbFine.set("suffix", "ct");
knbFine.setRange(-100, 100, 1);
knbFine.set("middlePosition", 0);
knbFine.setControlCallback(onknbFineControl);

inline function onknbFineControl(component, value)
{
	updateTuning();
}

// knbCoarse
const var knbCoarse = Content.getComponent("Coarse");
knbCoarse.set("text", "Coarse");
knbCoarse.set("suffix", "st");
knbCoarse.setRange(-12, 12, 1);
knbCoarse.set("middlePosition", 0);
knbCoarse.setControlCallback(onknbCoarseControl);

inline function onknbCoarseControl(component, value)
{
	updateTuning();
}

// Functions for tuning knobs
inline function updateTuning()
{
	local fine = knbFine.getValue();
	local coarse = knbCoarse.getValue();	
	local v = coarse + fine / 100;

	Engine.setGlobalPitchFactor(v);
}


 
 









function onNoteOn()
{
	
}
 function onNoteOff()
{
	
}
 function onController()
{
if(Synth.isSustainPedalDown() == true)
{
	SustainIndicatorButton.Button1.setValue(1);
}
else
{
	SustainIndicatorButton.Button1.setValue(0);
}	
}function onTimer()
{
	
}
 function onControl(number, value)
{
	
}
 