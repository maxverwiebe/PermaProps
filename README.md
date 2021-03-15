
<img  src="https://i.imgur.com/ldAFUWo.png"  alt="Logo">

The PermaProp system is my own solution for permanent entities. With it you can store entities and props permanently on a map. That means, they remain even after a mapchange.
  

## Keyfeatures

✔️ Modern UI<br  />

✔️ Fast & Optimized<br  />

✔️ Easy and fast to use<br/>
<br/>
✔️ CAMI permissions<br/>
⭐ Permissions for permapropping, open the overview and open the settings<br/>
⭐ Can therefore be set via many admin mods ingame (SAM, ULX, Serverguard etc.) <br  />
<br/>
✔️ Big config file<br/>
⭐ Theme<br/>
⭐ Max. PermaProps on a map<br/>
⭐ Blacklisted entities & models<br/>
⭐ and much more...<br  />
<br/>
✔️ Overview menu with many features<br/>
⭐ You can search the whole database by ID, model and class<br/>
⭐ You can directly delete a prop<br/>
⭐ You can teleport to props<br/>
⭐ You can change values like model and class<br/>
⭐ You can also select several entries<br/>
⭐ It shows also who made the entity permanent and when<br  />
⭐ Props can be highlighted and are thus visible to the player through walls<br/>
<br/>
✔️ Settings menu<br/>
⭐ Clear all PermaProps on the current map<br/>
⭐ Clear the whole database<br/>
⭐ Remove invalid PermaProps (on current map)<br/>
⭐ Respawn all PermaProps<br  />
<br/>
✔️ Support for MySQL<br  />

✔️ You can delete PermaProps that have an invalid model<br/>

✔️ PermaProps are not deleted on map when you depermaprop them<br  />

✔️ Old PermaProps can be imported<br  />

✔️ Keyvalues are optimized and saved automatically<br  />

✔️ Hooks to store custom data for developers<br  />

<img  src="https://i.imgur.com/Aq6jxeN.jpeg"  alt="Preview">

  
  

## Installation

<ol>

<li>Download the repository and unpack it in the Addons folder.</li>

<li>Edit the sh_config.lua to your needs.</li>

<li>Restart the server.</li>

<li>Configure the permissions.</li>

</ol>
  
## Usage

There is a toolgun, with which the whole addon can be used. This is in the category "Other" and is called "PermaProps". With a left click on an entity/prop, it is made permanent. Right click to unpermaprop it and reload to open the PermaProp in the menu.
There are also two buttons in the tool settings that allow you to open the overview and settings menu.
The overview menu shows all current PermaProps on the map. With the green download button you can download more entries, because only 30 are downloaded at a time, for optimization reasons.
With a right click on an entry different things can be done. Also different entries can be marked and there is a search.

In the settings menu you can perform various tasks.
You can delete all perma-props on the map, you can delete the complete database, you can remove error models and you can reload all props.
  
## Permissions

As already mentioned, the addon uses CAMI permissions. That means you can adjust the permissions ingame with many admin mods.

In this example with SAM:


<img  src="https://i.imgur.com/CrVl7xx.png"  alt="SAM">


<ul>

<li>PermaProps.CanPermaProp - The player can use the toolgun to make things permanent.</li>

<li>PermaProps.CanOpenOverview - The player can open the overview menu.</li>

<li>PermaProps.CanOpenSettings - The player can open the settings menu.</li>

</ul>

## Import old PermaProps

All old PermaProps from the old database can be imported into the new addon. The whole thing is done with a simple console command, which must be executed in the server console!
ImportPermaProps

After that a message appears in the console if the operation was successful.

After everything has been imported, a mapchange should be made to make it effective.

< Also, you should not use both PermaProp addons at the same time. This can cause compatibility problems and props will be spawned twice! >

## Config file

The config file is located at ticketsystem/lua/ticketsystem/sh_config.lua. All things can be configured there.

<ul>

<li>Color-Theme</li>

<li>Usergroup display (color & name)</li>

<li>Ticket limit</li>

<li>Reminder cooldown</li>

<li>Commands</li>

<li>Labels</li>

<li>Localization</li>

</ul>