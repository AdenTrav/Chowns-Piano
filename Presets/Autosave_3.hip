Processor 
Type SynthChain ID ChownPiano Bypassed Gain 	      �?Balance 	        VoiceLimit 	      P@KillFadeTime 	      4@IconColour 0 packageName  BuildVersion �  EditorStates BodyShown 0 Visible 1 Solo 0 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type ScriptProcessor ID Interface Bypassed Script dContent.makeFrontInterface(800, 420);;


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
  EditorStates BodyShown 1 Visible 1 Solo 0 contentShown 1 onInitOpen 1  ChildProcessors   Content  
Control type ScriptButton id 	Button1 value 	         Control type ScriptSlider id Knob1 value 	      1� Control type ScriptSlider id Knob2 value 	   ����? Control type ScriptSlider id Knob3 value 	   ����? Control type ScriptButton id 	Button2 value 	         Control type ScriptSlider id Fine value 	         Control type ScriptSlider id Coarse value 	         Control type ScriptSlider id Knob4 value 	   ����? Control type ScriptButton id 	Button3 value 	         Control type ScriptButton id 	Button4 value 	         UIData  ContentProperties DeviceType 	Desktop Component 	type ScriptPanel id 
BGPanel2 x 	      �y 	      d@width 	      �@height 	      n@bgColour 
16777215 itemColour 4294967295 itemColour2 4294967295  Component type ScriptPanel id ControlsBGPanel x 	      4�y 	     �[@width 	     @�@height 	      I@text  bgColour 4293849590 itemColour 4293849590 itemColour2 4293849590 textColour 4293849590  Component type ScriptImage id Image1 x 	        y 	      d@width 	      �@height 	     @p@fileName '{PROJECT_FOLDER}IMG20240418131232.jpg offset 	     @@Component type ScriptPanel id Panel3 x 	      $�y 	        parentComponent Image1 width 	     ��@height 	     �p@itemColour 268435456 itemColour2 4278190080 bgColour 1124073471 holdIsRightClick 0 locked 1  Component 
type ScriptPanel id Panel4 x 	     @o@y 	      T@width 	     `s@height 	      N@itemColour 4290032820 itemColour2 3045952909 textColour 4282992969 parentComponent Image1  Component 	type ScriptPanel id Panel5 x 	     @o@y 	     �r@width 	     `s@height 	      T@itemColour 4290032820 itemColour2 3045952909 textColour 4282992969  Component 	type ScriptPanel id Panel2 x 	     @o@y 	      d@width 	     `s@height 	      N@itemColour 4290032820 itemColour2 3045952909 textColour 4282992969  Component type ScriptButton id 	Button1 x 	        y 	     �[@text 	Sustain tooltip 0indicator for whether or not sustain is active bgColour 1442182645 itemColour 1714564911 itemColour2 4211081216 width 	      Y@height 	      I@ Component type ScriptSlider id Knob1 x 	     �t@y 	     @u@width 	     @`@height 	      I@text 
Room Mix textColour 4293503013 itemColour2 4211081216 itemColour 2113929215 bgColour 3875531368 tooltip ,Adds room reverb recorded in Fine Arts 115 mode 	Decibel suffix  dB middlePosition 	     @M�useUndoManager 1 showValuePopup Below isPluginParameter 1 pluginParameterName 
Room Mix filmstripImage ={PROJECT_FOLDER}Button and Slider PNG Renders/DD-slider.png numStrips 	      ?@dragDirection Horizontal scaleFactor 	   ����?isMetaParameter 1 processorId Convolution Reverb1 parameterId 	WetGain min 	      Y�max 	      1�stepSize 	      �?defaultValue 	      1� Component type ScriptLabel id Label1 x 	     @o@y 	      ^@width 	      r@height 	      >@text 
Controls fontSize 	      <@fontName Baskerville Old Face textColour 4293305376 locked 1  Component type ScriptSlider id Knob2 x 	     Pw@y 	      e@width 	      I@height 	      I@text Release Trigger Noise textColour 4293503013 itemColour2 4211081216 itemColour 2113929215 bgColour 3875531368 mode NormalizedPercentage suffix % middlePosition 	      �?defaultValue 	   ����?useUndoManager 1 showValuePopup Above isPluginParameter 1 pluginParameterName Release Trigger Noise isMetaParameter 1 processorId Release Triggers parameterId Gain filmstripImage ={PROJECT_FOLDER}Button and Slider PNG Renders/SmallKnob.png numStrips 	      ?@scaleFactor 	   ����?tooltip %controls volume of release triggers  Component type ScriptSlider id Knob3 x 	     �p@y 	     @e@width 	      I@height 	      N@text Pedal Up Noise textColour 4293503013 itemColour2 4211081216 itemColour 2113928701 bgColour 3875531368 mode NormalizedPercentage suffix % middlePosition 	      �?defaultValue 	   ����?useUndoManager 1 showValuePopup Above pluginParameterName Pedal Up Noise filmstripImage ={PROJECT_FOLDER}Button and Slider PNG Renders/SmallKnob.png numStrips 	      ?@tooltip #controls volume of pedal up sound scaleFactor 	   ����?isMetaParameter 1 isPluginParameter 1 processorId 	PedalUp parameterId Gain  Component 
type ScriptPanel id Panel1 x 	        y 	        width 	      �@height 	      Y@itemColour 4291952640 itemColour2 2264924160 textColour 3372220416 bgColour 1660944383  Component type ScriptFloatingTile id fltKeyboard x 	        y 	      $@ContentType 
Keyboard bgColour 4278190080 itemColour 4294967295 itemColour2 4294967295 textColour 0 Data \{
  "KeyWidth": 14.0,
  "DisplayOctaveNumber": true,
  "LowKey": 9,
  "HiKey": 108,
  "CustomGraphics": false,
  "DefaultAppearance": true,
  "BlackKeyRatio": 0.699999988079071,
  "ToggleMode": false,
  "MidiChannel": 1,
  "UseVectorGraphics": true,
  "UseFlatStyle": false,
  "MPEKeyboard": false,
  "MPEStartChannel": 2,
  "MPEEndChannel": 16
} width 	     0�@height 	      Y@itemColour3 
16777215  Component type ScriptButton id 	Button2 x 	      Y@y 	     �[@text 
Chownify width 	     @`@height 	      I@tooltip &don't save me cause I'm already..... isMetaParameter 1 pluginParameterName 
Chownify isPluginParameter 1 processorId Chown Sample parameterId 	Enabled  Component type ScriptLabel id Label2 x 	      ^@y 	     �_@width 	      N@height 	      4@text 
Chownify bgColour 4293849590 textColour 4293305376 fontName Brother Signature fontStyle Italic fontSize 	      4@locked 1  Component type ScriptFloatingTile id FloatingTile1 x 	     ��@y 	     @]@ContentType PerformanceLabel itemColour 
16777215 itemColour2 0 width 	     �g@height 	      D@Font Source Code Pro bgColour 4293849590 textColour 4278190080 locked 1  Component type ScriptSlider id Fine x 	     �y@y 	     @o@middlePosition 	        stepSize 	      �?min 	      Y�max 	      Y@suffix ct width 	      Y@height 	      I@filmstripImage I{PROJECT_FOLDER}Button and Slider PNG Renders/maschine-default-edit.png numStrips 	      ?@scaleFactor 	      �?showValuePopup Above tooltip +Controls tuning of piano samples in cents useUndoManager 1  Component type ScriptSlider id Coarse x 	     �p@y 	     @o@middlePosition 	        stepSize 	      �?min 	      (�max 	      (@suffix st width 	      N@height 	      I@filmstripImage I{PROJECT_FOLDER}Button and Slider PNG Renders/maschine-default-edit.png numStrips 	      ?@scaleFactor 	      �?showValuePopup Above tooltip /Controls tuning of piano samples in semitones useUndoManager 1  Component type ScriptSlider id Knob4 x 	     �}@y 	      e@width 	      N@height 	      I@text Pedal Down Noise textColour 4293503013 itemColour2 4211081216 itemColour 2113929215 bgColour 3875531368 tooltip %controls volume of pedal down sound mode NormalizedPercentage suffix % middlePosition 	      �?defaultValue 	   ����?useUndoManager 1 showValuePopup Above isPluginParameter 1 pluginParameterName Pedal Down Noise isMetaParameter 1 processorId PedalDown parameterId Gain filmstripImage ={PROJECT_FOLDER}Button and Slider PNG Renders/SmallKnob.png numStrips 	      ?@scaleFactor 	   ����? Component type ScriptLabel id Label3 x 	     @o@y 	     �k@text Pedal Up Noise bgColour 4290559164 width 	      T@height 	      4@fontStyle Bold itemColour 1612849698 itemColour2 4211081216 textColour 4278190080 fontName Lucida Sans fontSize 	      (@locked 1  Component type ScriptLabel id Label5 x 	     �t@y 	     �k@text Release Trigger Noise bgColour 4290559164 width 	      ^@height 	      4@itemColour 1612849698 textColour 4278190080 fontStyle Bold fontName Lucida Sans fontSize 	      (@locked 1  Component type ScriptLabel id Label6 x 	      |@y 	     �k@text Pedal Down Noise bgColour 4290559164 width 	     �[@height 	      4@itemColour 1612849698 textColour 4278190080 fontStyle Bold fontName Lucida Sans fontSize 	      (@locked 1  Component type ScriptLabel id Label7 x 	      t@y 	     @p@width 	      T@height 	      >@text Coarse Tuning textColour 4278190080 fontName Brother Signature fontStyle Bold fontSize 	      :@locked 1  Component type ScriptLabel id Label8 x 	     �|@y 	     @p@width 	      T@height 	      >@text Fine Tuning textColour 4278190080 fontName Brother Signature fontStyle Bold fontSize 	      >@locked 1  Component type ScriptLabel id Label4 x 	      @y 	      w@text Audio Settings bgColour 
12369084 width 	     �Q@height 	      1@fontStyle Bold itemColour2 0 fontName Lucida Sans fontSize 	      (@alignment top locked 1  Component 	type ScriptImage id Image2 x 	     �t@y 	     �r@fileName {PROJECT_FOLDER}RoomMix2.png width 	     @`@height 	      I@offset 	     �b@locked 1  Component type ScriptButton id 	Button3 x 	      $@y 	     `x@width 	     �G@height 	      <@text Midi Settings filmstripImage M{PROJECT_FOLDER}Button and Slider PNG Renders/ST_button_Bypass_22x13_6f.png enableMidiLearn 0 numStrips 	      @scaleFactor 	       @ Component type ScriptPanel id Panel6 x 	        y 	      d@bgColour 4293849590 itemColour 4293849590 itemColour2 4293849590 width 	      �@height 	     @i@textColour 4278190080 visible Component type ScriptFloatingTile id FloatingTile2 x 	        y 	        parentComponent Panel6 width 	     ��@height 	      i@ContentType CustomSettings bgColour 4278190080 itemColour 4278190080 itemColour2 4278190080 Data ~{
  "Driver": true,
  "Device": true,
  "Output": true,
  "BufferSize": true,
  "SampleRate": true,
  "GlobalBPM": false,
  "StreamingMode": true,
  "ScaleFactor": true,
  "VoiceAmountMultiplier": false,
  "ClearMidiCC": true,
  "SampleLocation": true,
  "DebugMode": false,
  "UseOpenGL": false,
  "ScaleFactorList": [
    0.5,
    0.75,
    1.0,
    1.25,
    1.5,
    2.0
  ]
} itemColour3 4278190080 FontSize 	      .@textColour 4278190080  Component type ScriptButton id 	Button4 x 	      Y@y 	     `x@width 	     �G@height 	      <@text Midi Settings filmstripImage M{PROJECT_FOLDER}Button and Slider PNG Renders/ST_button_Bypass_22x13_6f.png enableMidiLearn 0 numStrips 	      @scaleFactor 	       @ Component type ScriptLabel id Label9 x 	     �V@y 	      w@text Midi Settings bgColour 
12369084 width 	     �Q@height 	      5@fontStyle Bold itemColour2 0 fontName Lucida Sans fontSize 	      (@alignment top locked 1  Component type ScriptPanel id Panel7 x 	        y 	      d@bgColour 4278190080 itemColour 4278190080 itemColour2 4278190080 textColour 4294967295 width 	      �@height 	     @i@visible Component type ScriptFloatingTile id FloatingTile3 x 	        y 	        width 	      �@height 	      i@parentComponent Panel7 ContentType MidiChannelList bgColour 4278190080 itemColour 0 itemColour2 0  Component type ScriptFloatingTile id 
Tooltips x 	     ��@y 	     �w@width 	     �p@height 	      D@itemColour2 0 ContentType TooltipPanel bgColour 
16777215 itemColour 
16777215 FontSize 	      $@textColour 4293849590  Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type SynthChain ID Container1 Bypassed Gain 	      �?Balance 	        VoiceLimit 	      p@KillFadeTime 	      4@IconColour 0 EditorStates BodyShown 0 Visible 1 Solo 0 Folded 1  ChildProcessors  
Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type Convolution ID Convolution Reverb1 Bypassed DryGain 	        WetGain 	      1�Latency 	        ImpulseLength 	      �?ProcessInput 	      �?UseBackgroundThread 	        Predelay 	   `ff�?HiCut 	      4@Damping 	        FFTType 	      @FileName "{PROJECT_FOLDER}FINE_ARTS_IR.wav min     max nA loopStart     loopEnd nA EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor Type StreamingSampler ID NotesWithoutPedal Bypassed Gain 	      �?Balance 	        VoiceLimit 	      p@KillFadeTime 	      4@IconColour 0 PreloadSize 	      �@BufferSize 	      �@VoiceAmount 	      p@SamplerRepeatMode 	      @RRGroupAmount 	      @PitchTracking 	      �?OneShot 	        CrossfadeGroups 	        Purged 	        Reversed 	        NumChannels    UseStaticMatrix 	        Group0Table  Group1Table  Group2Table  Group3Table  Group4Table  Group5Table  Group6Table  Group7Table  SampleMapID NotesWithoutPedal EditorStates BodyShown 1 Visible 1 Solo 0 MapPanelShown 1 BigSampleMap 1 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type ScriptProcessor ID NotesWithoutPedalScript Bypassed Script �const var NotesWithoutPedal = Synth.getSampler("NotesWithoutPedal");
NotesWithoutPedal.enableRoundRobin(false);

reg counter = 0;
reg lastCount = 0;






function onNoteOn()
{
	if (Synth.isSustainPedalDown() == 1)
	{
	Message.ignoreEvent(true);
	}
	counter = (lastCount - 1 + Math.randInt(2, 5)) %3 ;
	NotesWithoutPedal.setActiveGroup(counter + 1);
	lastCount = counter;
}
function onNoteOff()
{
	
}
 function onController()
{
	
}
 function onTimer()
{
	
}
 function onControl(number, value)
{
	
}
  EditorStates BodyShown 1 Visible 1 Solo 0 contentShown 1 onInitOpen 1  ChildProcessors   Content   UIData  ContentProperties DeviceType 	Desktop  Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor 	Type SimpleEnvelope ID DefaultEnvelope1 Bypassed Monophonic 	        Retrigger 	      �?Intensity 	      �?Attack 	      @Release 	     �x@LinearMode 	      �?EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors  Processor Type ModulatorChain ID Attack Time Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type 
Velocity ID Velocity Modulator1 Bypassed Intensity 	      �?UseTable 	      �?Inverted 	        DecibelMode 	        VelocityTableData 536...............vOPk5e+....9C...vO...f+....9C...vO EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Sample Start Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Group Fade Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� channels  channelData enabled level 	        suffix   Processor Type StreamingSampler ID Release Triggers Bypassed Gain 	   ����?Balance 	        VoiceLimit 	      p@KillFadeTime 	      4@IconColour 0 PreloadSize 	      �@BufferSize 	      �@VoiceAmount 	      p@SamplerRepeatMode 	      @RRGroupAmount 	      �?PitchTracking 	      �?OneShot 	        CrossfadeGroups 	        Purged 	        Reversed 	        NumChannels    UseStaticMatrix 	        Group0Table  Group1Table  Group2Table  Group3Table  Group4Table  Group5Table  Group6Table  Group7Table  SampleMapID ReleaseTriggers EditorStates BodyShown 1 Visible 1 Solo 0 MapPanelShown 1 BigSampleMap 1 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type ScriptProcessor ID -Dont Trigger Release Samples if Sus is Down Bypassed Script � function onNoteOn()
{
	
}
 function onNoteOff()
{
	if (Synth.isSustainPedalDown())
	    Message.ignoreEvent(true);
}
 function onController()
{
	
}
 function onTimer()
{
	
}
 function onControl(number, value)
{
	
}
  EditorStates BodyShown 1 Visible 1 Solo 0 contentShown 1 onInitOpen 1  ChildProcessors   Content   UIData  ContentProperties DeviceType 	Desktop  Processor Type ReleaseTrigger ID Release Trigger1 Bypassed EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   Content  Control type ScriptButton id TimeAttenuate value 	      �? Control type ScriptSlider id Time value 	   ����? Control type ScriptTable id TimeTable value 	        data %24......zLyL8C...vO...f+....9C...vO  Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor 	Type SimpleEnvelope ID DefaultEnvelope3 Bypassed Monophonic 	      �?Retrigger 	      �?Intensity 	      �?Attack 	      @Release 	      $@LinearMode 	      �?EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors  Processor Type ModulatorChain ID Attack Time Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Sample Start Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Group Fade Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� channels  channelData enabled level 	        suffix   Processor Type StreamingSampler ID NotesWithPedal Bypassed Gain 	      �?Balance 	        VoiceLimit 	      p@KillFadeTime 	      4@IconColour 0 PreloadSize 	      �@BufferSize 	      �@VoiceAmount 	      p@SamplerRepeatMode 	      @RRGroupAmount 	      @PitchTracking 	      �?OneShot 	        CrossfadeGroups 	        Purged 	        Reversed 	        NumChannels    UseStaticMatrix 	        Group0Table  Group1Table  Group2Table  Group3Table  Group4Table  Group5Table  Group6Table  Group7Table  SampleMapID NotesWithPedal EditorStates BodyShown 1 Visible 1 Solo 0 MapPanelShown 1 BigSampleMap 1 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type ScriptProcessor ID NotesWithPedalScript Bypassed Script �const var NotesWithPedal = Synth.getSampler("NotesWithPedal");
NotesWithPedal.enableRoundRobin(false);

reg counter = 0;
reg lastCount = 0;function onNoteOn()
{
	if (Synth.isSustainPedalDown() == 0)
	{
	Message.ignoreEvent(true);
	}
}
	counter = (lastCount - 1 + Math.randInt(2, 5)) %3 ;
	NotesWithPedal.setActiveGroup(counter + 1);
	lastCount = counter;
}
function onNoteOff()
{
	
}
 function onController()
{
	
}
 function onTimer()
{
	
}
 function onControl(number, value)
{
	
}
  EditorStates BodyShown 1 Visible 1 Solo 0 contentShown 1 onInitOpen 1  ChildProcessors   Content   UIData  ContentProperties DeviceType 	Desktop  Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor 	Type SimpleEnvelope ID DefaultEnvelope4 Bypassed Monophonic 	        Retrigger 	      �?Intensity 	      �?Attack 	      @Release 	      $@LinearMode 	      �?EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors  Processor Type ModulatorChain ID Attack Time Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type 
Velocity ID Velocity Modulator2 Bypassed Intensity 	      �?UseTable 	      �?Inverted 	        DecibelMode 	        VelocityTableData U60...............vOWfKf9vc2c4C...vOVxJA+XUUU7C...vOyg4X+7t6t8C...vO...f+....9C...vO EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Sample Start Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Group Fade Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� channels  channelData enabled level 	        suffix   Processor Type StreamingSampler ID PedalDown Bypassed Gain 	   ����?Balance 	        VoiceLimit 	      p@KillFadeTime 	      4@IconColour 0 PreloadSize 	      �@BufferSize 	      �@VoiceAmount 	      p@SamplerRepeatMode 	      @RRGroupAmount 	       @PitchTracking 	      �?OneShot 	        CrossfadeGroups 	        Purged 	        Reversed 	        NumChannels    UseStaticMatrix 	        Group0Table  Group1Table  Group2Table  Group3Table  Group4Table  Group5Table  Group6Table  Group7Table  SampleMapID PedalSounds EditorStates BodyShown 1 Visible 1 Solo 0 MapPanelShown 1 BigSampleMap 1 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type ScriptProcessor ID PedalDownScript Bypassed Script 2const var PedalDown = Synth.getChildSynth("PedalDown");
{
}function onNoteOn()
{
	Message.ignoreEvent(true);
}
 function onNoteOff()
{
	
}
 function onController()
{
	if(Synth.isSustainPedalDown() == 1)
	{
		Synth.playNote(64, 127);
	}
}function onTimer()
{
	
}
 function onControl(number, value)
{
	
}
  EditorStates BodyShown 1 Visible 1 Solo 0 contentShown 1 onInitOpen 1  ChildProcessors   Content   UIData  ContentProperties DeviceType 	Desktop  Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor 	Type SimpleEnvelope ID DefaultEnvelope41 Bypassed Monophonic 	        Retrigger 	      �?Intensity 	      �?Attack 	      @Release 	      $@LinearMode 	      �?EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors  Processor Type ModulatorChain ID Attack Time Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Sample Start Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Group Fade Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� channels  channelData enabled level 	        suffix   Processor Type StreamingSampler ID 	PedalUp Bypassed Gain 	   ����?Balance 	        VoiceLimit 	      p@KillFadeTime 	      4@IconColour 0 PreloadSize 	      �@BufferSize 	      �@VoiceAmount 	      p@SamplerRepeatMode 	      @RRGroupAmount 	      �?PitchTracking 	      �?OneShot 	        CrossfadeGroups 	        Purged 	        Reversed 	        NumChannels    UseStaticMatrix 	        Group0Table  Group1Table  Group2Table  Group3Table  Group4Table  Group5Table  Group6Table  Group7Table  SampleMapID 	PedalUp EditorStates BodyShown 1 Visible 1 Solo 0 MapPanelShown 1 BigSampleMap 1 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type ScriptProcessor ID PedalUpScript Bypassed Script *const var PedalUp = Synth.getChildSynth("PedalUp");function onNoteOn()
{
	Message.ignoreEvent(true);
}
 function onNoteOff()
{
	
}
 function onController()
{
	if(Synth.isSustainPedalDown() == 0)
	{
		Synth.playNote(64, 127);
	}
}function onTimer()
{
	
}
 function onControl(number, value)
{
	
}
  EditorStates BodyShown 1 Visible 1 Solo 0 contentShown 1 onInitOpen 1  ChildProcessors   Content   UIData  ContentProperties DeviceType 	Desktop  Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor 	Type SimpleEnvelope ID DefaultEnvelope5 Bypassed Monophonic 	        Retrigger 	      �?Intensity 	      �?Attack 	      @Release 	      $@LinearMode 	      �?EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors  Processor Type ModulatorChain ID Attack Time Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Sample Start Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Group Fade Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� channels  channelData enabled level 	        suffix   Processor Type StreamingSampler ID Chown Sample Bypassed Gain 	      �?Balance 	        VoiceLimit 	      p@KillFadeTime 	      4@IconColour 0 PreloadSize 	      �@BufferSize 	      �@VoiceAmount 	      p@SamplerRepeatMode 	      @RRGroupAmount 	      �?PitchTracking 	      �?OneShot 	        CrossfadeGroups 	        Purged 	        Reversed 	        NumChannels    UseStaticMatrix 	        Group0Table  Group1Table  Group2Table  Group3Table  Group4Table  Group5Table  Group6Table  Group7Table  SampleMapID ChownifySampleMap EditorStates BodyShown 1 Visible 1 Solo 0 MapPanelShown 1 BigSampleMap 1 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor 	Type SimpleEnvelope ID DefaultEnvelope6 Bypassed Monophonic 	        Retrigger 	      �?Intensity 	      �?Attack 	      @Release 	      $@LinearMode 	      �?EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors  Processor Type ModulatorChain ID Attack Time Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Sample Start Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Group Fade Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� channels  channelData enabled level 	        suffix   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� macro_controls  macro name 	Macro 1 value 	        midi_cc ���� macro name 	Macro 2 value 	        midi_cc ���� macro name 	Macro 3 value 	        midi_cc ���� macro name 	Macro 4 value 	        midi_cc ���� macro name 	Macro 5 value 	        midi_cc ���� macro name 	Macro 6 value 	        midi_cc ���� macro name 	Macro 7 value 	        midi_cc ���� macro name 	Macro 8 value 	        midi_cc ���� MidiAutomation   MPEData Enabled  