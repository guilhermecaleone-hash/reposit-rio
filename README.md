[arquivo.py](https://github.com/user-attachments/files/35425208/arquivo.py)
import discord
from discord.ext import commands
import pandas
import pyautogui
intents = discord.Intents.default()
intents.message_content = True

bot = commands.Bot(command_prefix='#', intents=intents)

@bot.event
async def on_ready():
    print(f'Estamos logados como {bot.user}')

@bot.command()
async def hello(ctx):
    await ctx.send(f'Olá! eu sou um bot, o {bot.user}!')

@bot.command()
async def heh(ctx, count_heh = 5):
    await ctx.send("he" * count_heh)


@bot.group()
async def legal(ctx):
    """Says if a user is cool.

    In reality this just checks if a subcommand is being invoked.
    """
    if ctx.invoked_subcommand is None:
        await ctx.send(f'{ctx.subcommand_passed} não é legal')

@legal.command(name='Guilherme')
async def _bot(ctx):
    await ctx.send('Sim, Guilherme é legal')
    
@bot.command()
async def repita(ctx, times: int, content='repeating...'):
    """Repeats a message multiple times."""
    for i in range(times):
        await ctx.send(content)
"fazer depois" 
"""@bot.command()
async def salvar(ctx):"""
@bot.command()
async def ler_lembrete(ctx):
    dizer= pandas.read_csv()
    digo= dizer.loc[ctx, "lembrete"]
    await ctx.send(digo)

















bot.run("")
