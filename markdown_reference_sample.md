Below is a **complete Markdown sample `.md` file** that demonstrates **all syntax elements described in** the official documentation from
Markdown on the Daring Fireball site.

The syntax categories come from the official spec sections: **Block Elements, Span Elements, and Miscellaneous features** such as backslash escapes and automatic links. ([Daring Fireball][1])

I also added **commonly used extensions** (tables, fenced code blocks, task lists, etc.) so the file works as a **complete Markdown reference test file**.

---

# Full Markdown Sample File

Save as:

```
markdown_reference_sample.md
```

---

````markdown
# Markdown Complete Syntax Reference

This file demonstrates **all major Markdown syntax elements** from the original Markdown documentation plus commonly used extensions.

---

# 1. Headers

# H1 Header
## H2 Header
### H3 Header
#### H4 Header
##### H5 Header
###### H6 Header

Setext-style headers:

Heading Level 1
===============

Heading Level 2
---------------

---

# 2. Paragraphs

This is a normal paragraph.

Markdown paragraphs are separated by blank lines.

Line break example  
This line ends with two spaces above.

---

# 3. Emphasis

*Italic using asterisk*

_Italic using underscore_

**Bold using asterisk**

__Bold using underscore__

***Bold + Italic***

_You **can** combine emphasis_

---

# 4. Blockquotes

> This is a blockquote.
>
> It can contain multiple paragraphs.
>
>> Nested blockquote

> ### Headers inside blockquote

---

# 5. Lists

## Unordered List

* Item one
* Item two
* Item three

+ Alternative marker
+ Another item

- Dash marker
- Another dash item

## Nested List

- Parent item
  - Child item
  - Child item

## Ordered List

1. First
2. Second
3. Third

Nested:

1. First
   1. Sub item
   2. Sub item

---

# 6. Code

Inline code:

`print("Hello Markdown")`

Indented code block (4 spaces):

    def hello():
        print("Hello world")

---

# 7. Horizontal Rules

---

***

___

---

# 8. Links

Inline link:

[OpenAI](https://openai.com)

Reference-style link:

This is a [reference link][example].

[example]: https://example.com

---

# 9. Images

Inline image:

![Markdown Logo](https://markdown-here.com/img/icon256.png)

Reference-style image:

![Example Image][imgref]

[imgref]: https://markdown-here.com/img/icon256.png

---

# 10. Automatic Links

<https://example.com>

<[email protected]>

---

# 11. Backslash Escapes

\*Not italic\*

\# Not a header

\_Not italic\_

\`Not code\`

Escaped characters:

\  backslash  
\` backtick  
\* asterisk  
\_ underscore  
\{ } curly braces  
\[ ] square brackets  
\( ) parentheses  
\# hash  
\+ plus  
\- minus  
\. dot  
\! exclamation  

---

# 12. Inline HTML

Markdown allows raw HTML.

<b>Bold using HTML</b>

<i>Italic using HTML</i>

<div style="border:1px solid gray;padding:10px;">
HTML block example
</div>

<table>
<tr>
<td>HTML</td>
<td>Table</td>
</tr>
</table>

---

# 13. Special Characters

AT&T

4 < 5

Copyright symbol:

&copy;

---

# 14. Extended Markdown Features (Common Extensions)

These are widely supported but **not part of original Markdown**.

---

## Fenced Code Blocks

```python
def hello():
    print("Hello fenced code")
````

---

## Tables

| Name  | Age | Country |
| ----- | --- | ------- |
| Alice | 25  | USA     |
| Bob   | 30  | UK      |
| Chen  | 28  | China   |

---

## Task Lists

* [x] Completed task
* [ ] Incomplete task
* [ ] Another task

---

## Strikethrough

~~This text is removed~~

---

## Highlight (Some parsers)

==Highlighted text==

---

## Definition List (some engines)

Term
: Definition of the term

---

## Footnotes

Here is a sentence with a footnote.[^1]

[^1]: This is the footnote text.

---

# 15. Nested Formatting

> **Bold inside blockquote**
>
> * List inside quote
> * `Code inside quote`

---

# 16. Mixed Example

1. **Bold**
2. *Italic*
3. `Code`
4. [Link](https://example.com)

---

# End of Markdown Reference

```

---

💡 **Tip for you (since you work with documentation and Jupyter/Excalidraw notes):**

You can use this file as a **Markdown rendering test file** for:

- VS Code
- JupyterLab
- GitHub
- Obsidian
- Markdown parsers
- Static site generators

---

✅ If you want, I can also give you a **“Super Markdown Test File”** (used by parser developers) that contains **50+ edge cases** to test Markdown engines.
::contentReference[oaicite:3]{index=3}
```

[1]: https://daringfireball.net/projects/markdown/syntax?utm_source=chatgpt.com "Daring Fireball: Markdown Syntax Documentation"
