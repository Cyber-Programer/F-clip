# F-clip

F-clip is a simple command-line tool that allows users to copy the contents of a text file directly to the clipboard. It supports clearing the clipboard and displaying help information.

## Features

- Copy the contents of a specified text file to the clipboard.
- Clear the clipboard to remove any existing content.
- Display help information for usage instructions.

## Installation

1. **Clone the Repository** (or download the files):
    ```bash
    git clone https://github.com/Cyber-Programer/F-clip.git
    ```

2. **Make sure you have Python 3 and the `pyperclip` library installed**:
    ```bash
    pip install pyperclip
    ```

3. **Run the setup script**:
    ```bash
    bash setup.sh
    ```

## Usage

You can use `F-clip` in the terminal with the following commands:

### Copy File Contents to Clipboard

To copy the contents of a file to the clipboard, use:
```bash
F-clip <filename>
```

#### Example 
```bash
F-clip data.txt
```

#### Clear the Clipboard
- To clear the clipboard content, use:
```bas
F-clip --clear
```
- Also use
```bash
F-clip -clr
```

#### Show Help Information
- To display usage instructions, use:
```bash
F-clip --help
```

#### Example:
```bash
F-clip myfile.txt
F-clip --clear
F-clip --help
```
