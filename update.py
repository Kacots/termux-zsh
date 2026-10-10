#!/usr/bin/env python3

import subprocess
from pathlib import Path
import shutil

ROOT = Path.home()/".termux-zsh"
ZSHPLUGINS = Path.home()/".zsh-plugins"

def _execute(cmd: str,shell=True):
    response = subprocess.run(cmd, shell=shell)
    response.returncode

def install():
    print("[+] Updating package")
    _execute("pkg update && pkg upgrade -y")
    print("[+] Installing dependencies")
    _execute("pkg install git zsh python")
    if ROOT.exists() or ZSHPLUGINS.exists():
        print("[!] Directory .termux-zsh or zsh-plugins exists")
        inp = input("[!] Remove Directory[Y/n]")
        if inp == "n":
            return
        shutil.rmtree(ROOT)
        shutil.rmtree(ZSHPLUGINS)
    shutil.copytree("termux-zsh",ROOT)
    ZSHPLUGINS.mkdir()
    print("[+] install zsh plugins")

def check_update_repo():pass

    

def update():
    print("[*] Checking update....")
    if ROOT.exists():
        print(f"[*] Directory {ROOT} Existing")
        shutil.rmtree(ROOT)
        print(f"[-] removed {ROOT}")
    print("[+] copytree to home dir")
    shutil.copytree("termux-zsh",ROOT)

if __name__ == "__main__":
    update()







