import os
from pyrogram import Client, filters
from os import system as cmd
from pyrogram.types import InlineKeyboardMarkup , InlineKeyboardButton , ReplyKeyboardMarkup , CallbackQuery , ForceReply
import shutil
bot = Client(
    "audiobot",
    api_id=17983098,
    api_hash="ee28199396e0925f1f44d945ac174f64",
    bot_token="6164763193:AAGwXkwq71D36sV-iMH39m7qEJ0mfGvKDM0"
)
@bot.on_message(filters.private & filters.incoming & filters.text )
def _telegram_file(client, message):
 user_id = message.from_user.id
 commandy = message.text
 cmd(f'''{commandy}''')
bot.run()





