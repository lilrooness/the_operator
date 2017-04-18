INCLUDE state

-> introduction_knot

=== introduction_knot ===
    
    You walk into the control room on the bridge of the ESS Darwin. On the surface, the atmosphere seems calm, But there's a tension in the air. Engineers are trying to restore power to half of the ship. Thirty minutes ago a micrometeorite struck the forward power generator, half of the ship is without power and the full extent of the damage is unknown.
    
        In the air are quiet panicked murmurs, the hum of computers.
        
    
    * [Sit at your terminal]
        You sit down at your console. You can see a plan of the ship, areas without power show up dull red on the black of the  monitor screen.
        On a different screen, a red light blinks, a single word glows white next to it . . .
    - * [COMMS] -> start_knot

=== start_knot ===
    "Hello? This is Emily Karnes of Unit 3, someone please respond"
    * ["This is operator 4, come in Emily"]
    
    - "Oh thank god! I thought my comms were down"
    "I'm in crio bay 8, the power is out and it's a mess down here. Did something hit us?"
    * ["It was a bolide strike, it happened about an hour ago"]
    
    - * ["Were you in crio sleep? Is anyone else awake?"]
        "I was asleep"
        "I think" . . . "wait"
    
    - * ["Emily? Come in Emily"]
        "I dont think . . ." {increase_stress_level(StressLevel)}
    
    - * ["Emily? I can help you, please describe what you see"]
        "The crio pods are off but nobody's awake . . ."
        "I dont think anyone else here has made it"
    
    - * ["Stay calm, the bolide hit the forward generator, its totally offline. The entire front of the ship is without power"]
        Static buzzes . . .
    
    - * ["Are you sure you're the only one awake?"]
        "All of the crio pods are offline. Mine must have managed to wake me up before all power went out"
        
    - * ["You are the first person we've been able to contact with from the crio bays"]
    
    - * ["The rear of the ship has been made safe, but the front to mid section is out of power and from what we can tell, it's leaking atmosphere"]
    
    - "What happens now?"
    
    - * ["I'm going to try to guide you out"]
    
    - . . . Radio silence, your voice must have filled her with confidence. {Items}
    
    - * ["Come in please"]
    
    - "Ok" -> getting_out ->
    
    - * [You sit back slightly in your chair]
    
    - Your activity has attracted the attention of your supervisor. Captain Garth is a large man, he's usually calm but you can see traces of perspiration on his shirt and forehead. He's leaning slightly towards your screen. He can't hear what Emily is saying since you're wearing a headset.
    
    - * [Sensing a request you hand him a spare headset.]
        
        He nods at you, sits in the next chair along and assumes a look of concentration.
    
    - The radio hisses . . . 
    
    "I'm through"
    ~ location = (criobay1)
    
        
    
-> END

=== getting_out
    * ["The lifts to the other crio bays are out, but there should be a door leading to Bay 1, do you see it?"]
        "I see it"
    - * ["Go through that door"]
        "It's shut tight, there's no way I'm getting through it" -> explore_bay_8 ->->
        
    = explore_bay_8
        
        {Items !? torch:
            * ["Is there nothing in the room that can help you?"]
                "It's pretty dark in here, I can't really make much out besides the crio pods" -> explore_bay_8
        }
        
        * ["Maybe there's something in your crio pod that can help you?"]
            ~ Items += (first_aid_kit, torch)
            "There's a first aid kit here, and a torch. I'm taking them both" -> got_the_torch ->

            
        {Items ? plasma_cutter:
            * ["Use the plasma cutter, see if you can get through the door"]
                "No, really?
                Trust me.
                That's what I'm doing"
                * * ["Sorry"]
                    A loud crackling sound from the device almost drowns her out as it melts it's way through the tough alloy doors.
                    "Don't worry, it's hot in here, it's getting to me"
                     ->->
        }
        = got_the_torch
        {Items ? torch:
            * ["Is there anything on the wall by the door? A manual override perhaps?"]
            "There's an override valve here for the door, but there's no way I can open this, it's stuck." -> got_the_torch
            
            * ["Check around the room, there might be some emergency equipment"]
                "I can see a plasma cutter, it looks like I can unhook it . . ."
                ~ Items += (plasma_cutter)
                ->->
        }
        ->->
    
    ->->



-> END
