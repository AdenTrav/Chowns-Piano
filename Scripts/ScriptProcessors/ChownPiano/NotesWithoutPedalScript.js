const var NotesWithoutPedal = Synth.getSampler("NotesWithoutPedal");
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
 