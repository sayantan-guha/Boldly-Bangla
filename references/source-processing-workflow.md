# Source Processing Workflow — Boldly Bangla Cultural Repository

This file defines the standard workflow for ingesting new content sources into the Boldly Bangla knowledge base via NotebookLM.

---

## The Notebooks

Multiple notebooks are used depending on source type. Use the appropriate one:

| Notebook | Purpose |
|---|---|
| Bengali Cultural Intelligence — Boldly Bangla | Literary, cultural, social sources |
| Satyajit Ray — Feluda Writing Style | Feluda stories + Satyajit Ray short stories |
| Byomkesh Bakshi — Fictional Universe & Writing Style | Byomkesh stories |
| Bengali Crime, Horror & Stories | Crime/horror fiction, Tarapada, Ullas Mallik |
| *(new notebooks as needed)* | Sunil Gangopadhyay, history, music, cinema, etc. |

**Supported source types:**
- YouTube links (podcasts, interviews, audiobooks, lectures, documentaries)
- Web URLs (news articles, Wikipedia, essays, criticism)
- PDFs (books, academic papers, scripts)
- Copied text (transcripts, translated excerpts, social media threads)

---

## Standard Trigger

When the user says any of the following, treat it as a source ingestion request:
- "Add this link — [URL]"
- "Process this for Boldly Bangla — [URL]"
- "Add to the repository — [URL]"
- Multiple URLs in one message

Determine the content type first, then choose the right query set below.

---

## QUERY SETS

Choose the right set based on what the source is.

---

### Query Set A — Literary / Creative Sources
*Use for: fiction, poetry, essays, satirical writing, screenplays*

**Query A1 — Writing Style & Craft**
```
From this source, extract the author's writing style and craft techniques — sentence structure, rhythm and pacing, use of humor and irony, how emotion is built, what makes dialogue feel authentic, how atmosphere is created, use of setting and place, narrative structure. Give concrete examples from the text.
```

**Query A2 — Cultural Insights**
```
From this source, extract deep Bengali cultural insights — emotional registers, social norms, generational tensions, values, storytelling traditions, how Bengalis relate to language, nostalgia, performance, work, community, and history. Be specific and culturally precise.
```

**Query A3 — Author Profile**
```
Extract a detailed profile of the author/creator — biography, worldview, signature phrases, writing style, known opinions, cultural references they use, emotional register, humor and irony, what makes their voice distinctive.

CLASSIFICATION: Is this person a WRITER/LYRICIST/STORYTELLER (style usable) or a CULTURAL SUBJECT (reference only, no style guide)?
```

**Query A4 — Popular Culture & References**
```
From this source, extract all popular culture references, iconic moments, catchphrases, and culturally memorable elements. For each: what it is, why it resonates, which generation it speaks to, how it could be used as a hook or reference in contemporary Bengali content.
```

**Query A5 — Fictional Universe Profile** *(only for fiction with recurring characters)*
```
Give a complete fictional universe profile: character profiles (traits, catchphrases, quirks), iconic moments and cases, cultural shorthand (how names/phrases are used today), quiz-worthy trivia, recurring story patterns and villain types.
```

---

### Query Set B — Historical / Informational Sources
*Use for: history, documentary, lectures, journalism, academic content*

**Query B1 — Historical Facts & Context**
```
From this source, extract key historical facts, dates, events, and figures relevant to Bengali culture and history. For each: what happened, when, who was involved, why it matters to Bengali identity, and how it connects to broader cultural themes. Be specific — names, dates, places.
```

**Query B2 — Cultural Significance**
```
From this source, extract what this history or information reveals about Bengali society, values, identity, and culture. How did this event/period/phenomenon shape Bengali self-understanding? What tensions, transformations, or continuities does it reveal?
```

**Query B3 — Contemporary Resonance**
```
How does this historical/informational content connect to contemporary Bengali life, popular culture, or current debates? What echoes of this history are visible in Bengali cinema, literature, music, or everyday culture today? How could a content creator use this historical knowledge in contemporary Bengali storytelling?
```

**Query B4 — Repository Entry**
```
Summarise this source as a cultural repository entry: key facts, key figures, key dates, cultural significance, contemporary relevance, and 3–5 specific details that would be useful for a writer, researcher, or content creator working with Bengali culture.
```

---

### Query Set C — Music / Performing Arts Sources
*Use for: concert recordings, music interviews, theatrical performances, dance, Jatra*

**Query C1 — Musical / Performance Style**
```
From this source, extract the artist's or form's distinctive style — musical characteristics, lyrical themes, performance energy, relationship with audience, use of language and imagery in lyrics/speech, what makes this voice or form distinctively Bengali.
```

**Query C2 — Cultural Context**
```
What does this music or performance reveal about Bengali culture, emotion, and identity? What social classes, generations, or communities does it speak to or come from? How does it relate to the broader Bengali cultural tradition?
```

**Query C3 — Artist Profile** *(if about a specific artist)*
```
Extract a detailed profile of the artist — biography, musical/artistic worldview, signature phrases and hooks, lyrical themes, emotional register, cultural references they use, how they are received and remembered by Bengali audiences.
```

---

## Where to Save Outputs

| Query | Save to folder |
|---|---|
| Writing style / craft | `personas/[name].md` |
| Cultural insights (literary) | `literature/[source-slug].md` |
| Cultural insights (sports) | `sports/[source-slug].md` |
| Cultural insights (general) | `cultural-references/[source-slug].md` |
| Historical facts & context | `history/[source-slug].md` |
| Contemporary resonance | Add to existing thematic file or `popular-culture/[source].md` |
| Fictional universe profile | `fictional-universes/[character].md` |
| Music / performing arts | `music/[source-slug].md` or `performing-arts/[source-slug].md` |
| Food & society | `food-society/[source-slug].md` |
| Language insights | `language/[source-slug].md` |
| Copywriting principles | `copywriting-principles.md` (append only) |

---

## How to Use the Repository When Writing

Before generating any content, check the relevant folder:

1. `personas/` — for voice, style, or writing about a specific person
2. `literature/` — for literary tonal reference
3. `fictional-universes/` — for meta-references, quiz content, Easter eggs
4. `sports/` — for sports cultural context
5. `history/` — for historical grounding
6. `language/` — for register guidance and language traps
7. `food-society/` — for social customs and food-as-culture references
8. `music/` — for music cultural context
9. `cinema/` — for Bengali cinema craft and history
10. `copywriting-principles.md` — for craft rules (always)
