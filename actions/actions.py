from rasa_sdk import Action
from rasa_sdk.events import SlotSet

class ActionSetMusicPreference(Action):
    def name(self):
        return "action_set_music_preference"

    def run(self, dispatcher, tracker, domain):
        """Sets the slot 'likes_music' to true/false dependent on whether the user
        likes music"""
        intent = tracker.latest_message["intent"].get("name")

        if intent == "affirm":
            return [SlotSet("likes_music", True)]
        elif intent == "deny":
            return [SlotSet("likes_music", False)]
        return []