local L = LibStub("AceLocale-3.0"):NewLocale("EPGP", "esMX")
if not L then return end

L["Alts"] = "Alts"
L["A member is awarded EP"] = "Un miembro es recompensado con EP"
L["A member is credited GP"] = "Un miembro es acreditado con GP"
L["An item was disenchanted or deposited into the guild bank"] = "Un Bot\195\173n fue desencantado o depositado en el Banco de la Hermandad"
L["Announce"] = "Anunciar"
L["Announce medium"] = "Canal de Anuncio"
L["Announcement of EPGP actions"] = "Anunciar acciones sobre EPGP"
L["Announces EPGP actions to the specified medium."] = "Anunciar acciones sobre EPGP en el canal."
L["Announce when:"] = "Anunciar cuando:"
L["Are you sure you want to delete log entries older than one month?"] = "Estas seguro que quieres borrar las entradas de registro anteriores a un mes?"
L["Automatic boss tracking"] = "Seguimiento de Jefe automatico"
L["Automatic boss tracking by means of a popup to mass award EP to the raid and standby when a boss is killed."] = "El seguimiento de Jefe automatico mostrara una ventana para asignar recompenzas de EP masivo a la Banda, cuando un Jefe es matado"
L["Automatic handling of the standby list through whispers when in raid. When this is enabled, the standby list is cleared after each reward."] = "Manejo autom\195\161tico de la lista de reserva por susurros durante un encuentro. Cuando esta activa, la lista de reserva es limpiada despues de cada recompenza"
L["Automatic loot tracking"] = "Seguimiento de despojo automatico"
L["Automatic loot tracking by means of a popup to assign GP to the toon that received loot. This option only has effect if you are in a raid and you are either the Raid Leader or the Master Looter."] = "El seguimiento de despojo automatico mostrara una ventana para asignar GP al personaje que reciba un despojo. Esta opcion solo tiene efecto si estas en Banda y eres el lider de la Banda o el Maestro despojador"
L["Award EP"] = "Otorgar EP"
-- L["Awards for wipes on bosses. Requires Deadly Boss Mods or BigWigs"] = ""
L["Base GP should be a positive number"] = "El GP base debe ser un n\195\186mero positivo"
L["Boss"] = "Jefe"
L["Credit GP"] = "Reconocer GP"
L["Credit GP to %s"] = "Reconocer GP a %s"
L["Custom announce channel name"] = "Nombre del canal de anuncios personalizado"
L["Decay"] = "Disminuci\195\179n"
L["Decay EP and GP by %d%%?"] = "\194\191Disminuir EP y GP un %d%%?"
L["Decay of EP/GP by %d%%"] = "Disminuci\195\179n de EP/GP en %d%%"
L["Decay Percent should be a number between 0 and 100"] = "El porcentaje de disminuci\195\179n debe ser un n\195\186mero entre 0 y 100"
L["Decay=%s%% BaseGP=%s MinEP=%s Extras=%s%%"] = "Disminuci\195\179n=%s%% BaseGP=%s MinEP=%s Extras=%s%%"
L["%+d EP (%s) to %s"] = "%+d EP (%s) a %s"
L["%+d GP (%s) to %s"] = "%+d GP (%s) a %s"
L["%d or %d"] = "%d o %d"
L["Do you want to resume recurring award (%s) %d EP/%s?"] = "Quieres reactivar la recompenza recurrente de (%s) %d EP/%s?"
L["EP/GP are reset"] = "EP/GP reiniciados"
L["EPGP decay"] = "EPGP decay"
L["EPGP is an in game, relational loot distribution system"] = "EPGP es un sistema de distribucion de items relacional dentro del juego"
L["EPGP is using Officer Notes for data storage. Do you really want to edit the Officer Note by hand?"] = "EPGP esta usando las Notas de Oficial para almacenar datos. \194\191Estas seguro que deseas editar la Nota de Oficial a mano?"
L["EPGP reset"] = "Reinicio de EPGP"
L["EP Reason"] = "Raz\195\179n de EP"
L["Export"] = "Exportar"
L["Extras Percent should be a number between 0 and 100"] = "El porcentaje extra debe ser un n\195\186mero de 0 a 100"
L["GP: %d"] = "GP: %d"
L["GP: %d or %d"] = "GP: %d o %d"
L["GP on tooltips"] = "Valor GP en Detalles de Botin"
L["GP Reason"] = "Raz\195\179n de GP"
L["Guild or Raid are awarded EP"] = "Hermandad o Banda es recompensada con EP"
L["Hint: You can open these options by typing /epgp config"] = "Consejo: Puedes abrir estas opciones escribiendo /epgp config"
-- L["Idle"] = ""
L["If you want to be on the award list but you are not in the raid, you need to whisper me: 'epgp standby' or 'epgp standby <name>' where <name> is the toon that should receive awards"] = "Si quieres estar en la lista de recompensas pero no est\195\161s en la raid, tienes que susurrarme: \"epgp standby\" o \"epgp standby <nombre>\" donde <nombre> es el personaje que deber\195\173a recibir recompensas"
L["Ignoring EP change for unknown member %s"] = "Ignorar cambios de EP para miembro desconocido %s"
L["Ignoring GP change for unknown member %s"] = "Ignorar cambios en GP para miembro desconocido %s"
L["Import"] = "Importar"
L["Importing data snapshot taken at: %s"] = "Datos de importacion tomados en: %s"
L["Invalid officer note [%s] for %s (ignored)"] = "Nota de oficial inv\195\161lida [%s] para %s"
L["List errors"] = "Listar errores"
L["Lists errors during officer note parsing to the default chat frame. Examples are members with an invalid officer note."] = "Listar errores durante el an\195\161lisis de las notas al marco de chat por defecto. Por ejemplo los miembros con una nota de oficial inv\195\161lida."
L["Loot"] = "Bot\195\173n"
L["Loot tracking threshold"] = "Seguimiento de Bot\195\173n m\195\173nimo"
-- L["Make sure you are the only person changing EP and GP. If you have multiple people changing EP and GP at the same time, for example one awarding EP and another crediting GP, you *are* going to have data loss."] = ""
L["Mass EP Award"] = "Otorgar EP masivo"
L["Min EP should be a positive number"] = "EP M\195\173nimo debe ser un n\195\186mero positivo"
L["Next award in "] = "Siguiente recompensa en"
L["Only display GP values for items at or above this quality."] = "Solo mostrar valores de GP para Botines iguales o encima de esta calidad."
L["Other"] = "Otro"
L["Paste import data here"] = "Pegar los datos importados aqui"
L["Personal Action Log"] = "Registro personal de acciones"
L["Provide a proposed GP value of armor on tooltips. Quest items or tokens that can be traded for armor will also have a proposed GP value."] = "Provee un valor GP propuesto y lo muestra en tooltips. Los botines de quest o insignia tambi\195\169n recibir\195\161n un valor GP propuesto"
L["Quality threshold"] = "Calidad M\195\173nima"
L["Recurring"] = "Recurrente"
L["Recurring awards resume"] = "Recompensas recurrentes reiniciadas"
L["Recurring awards start"] = "Recompensas recurrentes iniciadas"
L["Recurring awards stop"] = "Recompensas recurrentes detenidas"
L["Redo"] = "Rehacer"
L["Reset all main toons' EP and GP to 0?"] = "\194\191Reiniciar todo el EP y GP de los personajes principales a 0?"
L["Reset EPGP"] = "Reiniciar EPGP"
L["Resets EP and GP of all members of the guild. This will set all main toons' EP and GP to 0. Use with care!"] = "einicia el EP y GP de todos los miembros de la hermandad. Esto pondr\195\161 todo el EP y GP de los personajes principales a 0. \194\161Usar con precauci\195\179n!"
L["Resume recurring award (%s) %d EP/%s"] = "Reactivar la recompensa de (%s) %d EP/%s"
L["%s: %+d EP (%s) to %s"] = "%s: %+d EP (%s) a %s"
L["%s: %+d GP (%s) to %s"] = "%s: %+d GP (%s) a %s"
L["Sets loot tracking threshold, to disable the popup on loot below this threshold quality."] = "Seleccionar seguimiento de Bot\195\173n m\195\173nimo, para desactivar esta ventana en Botines con menor calidad a la elegida"
L["Sets the announce medium EPGP will use to announce EPGP actions."] = "Configura el medio para anuncios que EPGP utilizar\195\161 para anunciar las acciones de EPGP"
L["Sets the custom announce channel name used to announce EPGP actions."] = "Configura el nombre canal de anuncios personalizado utilizado para anunciar las acciones de EPGP"
L["Show everyone"] = "Mostrar a todos"
L["%s is added to the award list"] = "%s se ha agregado a la lista de asignaciones"
L["%s is already in the award list"] = "%s ya esta en la lista de asignaciones"
L["%s is dead. Award EP?"] = "%s esta muerto. Asignar EP?"
L["%s is not eligible for EP awards"] = "%s no puede recibir EP"
L["%s is now removed from the award list"] = "%s se ha quitado de la lista de asignaciones"
L["%s: %s to %s"] = "%s: %s a %s"
L["Standby"] = "En espera"
L["Standby whispers in raid"] = "Susurro de las reservas durante un encuentro de Banda"
L["Start recurring award (%s) %d EP/%s"] = "Comienzo de recompensa recurrente (%s) %d EP/%s"
L["Stop recurring award"] = "Fin de recomensa recurrente"
L["%s to %s"] = "%s a %s"
L["The imported data is invalid"] = "Los datos importados son inv\195\161lidos"
L["To export the current standings, copy the text below and post it to: %s"] = "Para exportar los datos conocidos, copiar el texto debajo y p\195\169guelo en: %s"
L["Tooltip"] = "Detalles en Bot\195\173n"
L["To restore to an earlier version of the standings, copy and paste the text from: %s"] = "Para restaurar una versi\195\179n mas reciente de los datos, copie y pegue el texto desde: %s"
L["Trim Log"] = "Reducir registro"
L["Trims log to only entries in the last month."] = "Reducir registro de entradas solo de el \195\186ltimo mes"
L["Undo"] = "Deshacer"
-- L["Using %s for boss kill tracking"] = ""
L["Value"] = "Valor"
L["Whisper"] = "Susurrar"
L["Wipe awards"] = "Recompensas por fallos"
L["Wiped on %s. Award EP?"] = "Fallo en %s. Recompensar con EP?"
L["You cannot undo this action!"] = "No puedes volver atr\195\161s esta acci\195\179n"
L["You can now check your epgp standings and loot on the web: http://www.epgpweb.com"] = "Tu puedes ahora verificar tu EPGP y Botines en la web: http://www.epgpweb.com"
