const var PedalDown = Synth.getChildSynth("PedalDown");
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
 