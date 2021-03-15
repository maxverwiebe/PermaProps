
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

  

## Permissions

As already mentioned, the addon uses CAMI permissions. That means you can adjust the permissions ingame with many admin mods.

In this example with SAM:

  

<img  src="https://i.imgur.com/qEjK5Oz.png"  alt="SAM">

  

<ul>

<li>TicketSystem.CanOpenAdminMenu - The player can open the admin menu</li>

<li>TicketSystem.CanCreateTicket - The player can create a ticket</li>

<li>TicketSystem.ManageTickets - The player claim/close/reopen tickets</li>

</ul>

  

## Usage

There are two commands that can be used to control the addon.

<ul>

<li>/support or /ticket - Opens the ticket creation menu</li>

<li>/tickets or /ticketoverview - Opens the ticket overview menu</li>

</ul>

  

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