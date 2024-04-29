const var PedalUp = Synth.getChildSynth("PedalUp");
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
 