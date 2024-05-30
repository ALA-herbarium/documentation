# Agents

## Deleting a duplicate agent

Sometimes an agent record has been made in error for the same person
as a previous agent record.  The duplicate should be deleted as soon
as it is discovered. Usually the duplicate entry is newer, and has
been used less often in Arctos records, but in some cases the older
agent record may have less data and is chosen for deletion.

 * Rename the ‘preferred name’ of the duplicate agent so that you can
   differentiate it from the correct agent.
 * Transfer any data fields only occurring in the duplicate from the
   duplicate to the correct agent (e.g., Wikidata URL, birth, death
   dates).
 * Edit all the specimen records in which the duplicate agent has been
   used and switch the data field (e.g., collector) from duplicate to
   the correct agent.
 * Finally, add a new ‘**bad duplicate of**’ relationship field to the
   duplicate agent record, pointing to the correct agent. You will
   need to also add a date, your agent name, and some text in the
   ‘method’ field.
 * Save the duplicate agent, and it should automatically
   disappear. Check by searching again on a name that previously
   returned both correct and duplicate agents.
