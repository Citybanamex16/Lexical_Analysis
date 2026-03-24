# 🪱 Chakobsa Lexical Detector

> A DFA-based lexical analyzer for Chakobsa — the ancient tongue of the Dune universe — built in Prolog.

---

## 📖 About

**Chakobsa** is an ancient language that serves as the linguistic foundation for many civilizations across the Imperium. From the nomadic Fremen and the royal House Atreides to the enigmatic Bene Gesserit, Chakobsa blends with other dialects to form a rich tapestry of interstellar communication.

This project implements a **lexical detector** using a **Deterministic Finite Automaton (DFA)** in Prolog. It recognizes a curated set of Chakobsa words — both capitalized and lowercase — and rejects any input that falls outside this vocabulary.

---

## 🗣️ Recognized Vocabulary

| Word | Meaning | Origin |
|------|---------|--------|
| `chaumas` | Poison in solid food | Rima |
| `chaumurky`| Poison in drink | Ishkal |
| `cherem` | Brotherhood of hatred | Ishkal |
| `chouhada` | Purposeful fighters | Ishkal |
| `cielago` | Bat-like creature *(from older Harmonthepic: ciel "water" + lako "fowl"; likely derived from Spanish murciélago)* | — |

---

## ⚙️ How It Works

The detector is a DFA algorithm that:
- ✅ Recognizes all listed Chakobsa words
- ✅ Accepts both lowercase and capitalized forms (e.g., `chouhada` and `Chouhada`)
- ❌ Rejects any other input, including null characters

---

## 🚀 Getting Started

### Prerequisites

You need **SWI-Prolog** installed on your system.
👉 [Installation guide](https://www.swi-prolog.org/Download.html)

### Running the Program

1. Launch SWI-Prolog from your terminal.
2. Load the detector file:
```prolog
?- consult('ChakobsaDetector.pl').
```

3. Query a word:
```prolog
?- chakobsa(cherem).
```

4. Run the built-in test suite:
```prolog
?- run_test.
```

---

## ⚠️ Important Note on Capitalization

Prolog treats unquoted words starting with an uppercase letter as **variables**. To query a capitalized word, wrap it in **double quotes**:
```prolog
% ✅ Correct
?- chakobsa("Chouhada").

% ❌ This will be interpreted as a variable, not a word
?- chakobsa(Chouhada).
```

---

## 🛠️ Built With

- [SWI-Prolog](https://www.swi-prolog.org/) — Logic programming language
- DFA (Deterministic Finite Automaton) — Lexical analysis model

---

> *"The target of the Bene Gesserit training is the logos — the divine pattern of language."*
