Content.makeFrontInterface(800, 600);
const var Button1 = Content.getComponent("Button1");





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
	Button1.setValue(1);
}
else
{
	Button1.setValue(0);
}	
}
 function onTimer()
{
	
}
 function onControl(number, value)
{
	
}
 