*(This README might contains various TODO comments like this one as this file is under development. So if you are helping with the development of the app, be sure to look for comments like this one. Also, feel free to make a PR if you find features integrated in the app, but not mentioned here. Once all work is done, we can remove this comment 😀)*

Some clean code guidelines : -

1. All the constructor of stateless or stateful widget will be const and therefore all the fields will be "final".
   (so that they are always immutable within the class, for mutable objects use stateful classes)

2. All variables in State<SomeClass> should be private. (append "_" to every variable name at start).

3. Any function or custom widget will take parameterized arguments if no. of arguments are more than 1.
   Add @required for necessary parameters.

4. Don't be scared of big named classes and file names. Name each file/variable/class/enum/function/custom widget , whatever you define, crystal clear according to their abstract.

5. Categorize your work in terms of independent features and then put their files in a folder so that code can be organized and transparent.

6. Use "TODO:" as much as you can, if you're leaving a code incomplete or unfinished there must be a TODO: above it telling what is left to be done.

7. Break large widget trees into chunks of small widget trees where each small widget tree behaves independently and is significant for custom purposes. (for eg. we won't separate padding widget but a custom purpose ListView.builder can be separated)

8. For flutter, always use lowerCamelCase for naming. (not mandatory but lets just be standard so that code is readable to everybody)



<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-5-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://github.com/nishantkr18"><img src="https://avatars3.githubusercontent.com/u/44468894?v=4" width="100px;" alt=""/><br /><sub><b>Nishant Kumar</b></sub></a><br /><a href="https://github.com/IIT-BHU-InstiApp/IIT-BHU-app/commits?author=nishantkr18" title="Code">💻</a> <a href="#maintenance-nishantkr18" title="Maintenance">🚧</a></td>
    <td align="center"><a href="https://github.com/mohit-mangal"><img src="https://avatars1.githubusercontent.com/u/44101824?v=4" width="100px;" alt=""/><br /><sub><b>MOHIT MANGAL</b></sub></a><br /><a href="https://github.com/IIT-BHU-InstiApp/IIT-BHU-app/commits?author=mohit-mangal" title="Code">💻</a> <a href="#maintenance-mohit-mangal" title="Maintenance">🚧</a> <a href="https://github.com/IIT-BHU-InstiApp/IIT-BHU-app/commits?author=mohit-mangal" title="Documentation">📖</a></td>
    <td align="center"><a href="https://github.com/aviralJain101"><img src="https://avatars0.githubusercontent.com/u/48090218?v=4" width="100px;" alt=""/><br /><sub><b>aviralJain101</b></sub></a><br /><a href="https://github.com/IIT-BHU-InstiApp/IIT-BHU-app/commits?author=aviralJain101" title="Code">💻</a> <a href="#design-aviralJain101" title="Design">🎨</a></td>
    <td align="center"><a href="https://github.com/aksayushx"><img src="https://avatars2.githubusercontent.com/u/55887638?v=4" width="100px;" alt=""/><br /><sub><b>Ayush Kumar Shaw</b></sub></a><br /><a href="https://github.com/IIT-BHU-InstiApp/IIT-BHU-app/commits?author=aksayushx" title="Code">💻</a> <a href="#design-aksayushx" title="Design">🎨</a></td>
    <td align="center"><a href="https://github.com/Yashjain715"><img src="https://avatars3.githubusercontent.com/u/58399080?v=4" width="100px;" alt=""/><br /><sub><b>Yashjain715</b></sub></a><br /><a href="https://github.com/IIT-BHU-InstiApp/IIT-BHU-app/commits?author=Yashjain715" title="Code">💻</a> <a href="https://github.com/IIT-BHU-InstiApp/IIT-BHU-app/issues?q=author%3AYashjain715" title="Bug reports">🐛</a></td>
    <td align="center"><a href="https://github.com/Vikhyath08"><img src="https://avatars2.githubusercontent.com/u/55887656?v=4" width="100px;" alt=""/><br /><sub><b>Vikhyath Venkatraman</b></sub></a><br /><a href="https://github.com/IIT-BHU-InstiApp/IIT-BHU-app/commits?author=Vikhyath08" title="Code">💻</a> <a href="#design-Vikhyath08" title="Design">🎨</a></td>
  </tr>
</table>

<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->
<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
