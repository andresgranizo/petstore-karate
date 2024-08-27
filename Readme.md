# PetStore Karate Project

This project is a test automation framework using [Karate] and Gradle to test the signup and login functionalities of the PetStore API.

## Prerequisites

Before you begin, ensure you have met the following requirements:
- **Java Development Kit (JDK)**: Version 11 or higher. You can download it from [OpenJDK](https://openjdk.java.net/) or use a package manager like Homebrew.
- **Gradle**: Version 6.0 or higher. You can download it from the [Gradle website](https://gradle.org/install/) or use a package manager like Homebrew.

### Install Prerequisites on macOS using Homebrew

1. **Install Homebrew** (if not already installed):

    ```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

2. **Install JDK 11**:

    ```bash
    brew install openjdk@11
    ```

3. **Set JDK 11 as the default**:

    Add the following lines to your `~/.zshrc` or `~/.bash_profile`:

    ```bash
    export JAVA_HOME=/opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk/Contents/Home
    export PATH=$JAVA_HOME/bin:$PATH
    ```

    Then, reload your shell configuration:

    ```bash
    source ~/.zshrc  # or source ~/.bash_profile
    ```

4. **Install Gradle**:

    ```bash
    brew install gradle
    ```

### Install Prerequisites on Windows
1. Install JDK 11:
    * Download the JDK installer from the OpenJDK website.
    * Run the installer and follow the instructions.
2. Set JDK 11 as the default:
    * Open Environment Variables:
    * Press Win + X and select System.
    * Click on Advanced system settings.
    * Click on Environment Variables.
3. Add a new System variable:
    * Variable name: JAVA_HOME
    * Variable value: C:\Program Files\OpenJDK\jdk-11 (adjust based on your installation path)
    * Edit the Path variable and add: %JAVA_HOME%\bin
4. Install Gradle:
    * Download the Gradle binary from the Gradle website.
    * Extract the downloaded ZIP file to C:\Gradle.
    * Add C:\Gradle\bin to your Path environment variable.

### Verify Installation

Verify that Java and Gradle are installed correctly:

```bash
java -version
gradle -version
 ```

### Setup Instructions

1. Clone the repository:

```bash
git clone <repository-url>
cd petstore-karate
 ```

2. Build the project:

```bash
gradle clean build
 ```

3. Run the test:

```bash
gradle test
 ```

### Viewing Test Results
After running the tests, you can view the test results in the generated HTML report:

1. Navigate to the report directory:

```bash
cd target/cucumber-html-reports
 ```

2. Open the index.html file in a web browser to see the detailed test results.

```bash
open overview-features.html  # macOS
xdg-open overview-features.html  # Linux
start overview-features.html  # Windows
 ```
