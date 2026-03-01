# modulized-kickstart-nvim

## Description

This repo is a Neovim setup based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
with the addition of some settings and plugins I think are usefull.

I liked the idea of having each plugin at its own module so init.lua will not be huge.

I also added [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) because I mainly code
in HTML and TypeScript.

Another addition is [Harpoon](https://github.com/ThePrimeagen/harpoon).
I usually use only one IDE to code both on front end and back end, so it is usefull when I need
to often switch between files.

For the installation, following the instructions on kicstart is the way to go.

After doing or the prerequisites, then clone the repository.

#### Clone kickstart.nvim

> [!NOTE]
> If following the recommended step above (i.e., forking the repo), replace
> `nvim-lua` with `<your_github_username>` in the commands below

<details><summary> Linux and Mac </summary>

```sh
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

</details>

<details><summary> Windows </summary>

If you're using `cmd.exe`:

```
git clone https://github.com/nvim-lua/kickstart.nvim.git "%localappdata%\nvim"
```

If you're using `powershell.exe`

```
git clone https://github.com/nvim-lua/kickstart.nvim.git "${env:LOCALAPPDATA}\nvim"
```

</details>
