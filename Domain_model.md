# Domain Model

---------------------

## User Story

```
As a user,
So I can find customers,
I want to search for my customers by their surnames.
```

## Nouns
\*Person
\*Bike
\*Docking Station

## Verbs

\* use
\* working
\* release


| Objects          | Messages     |
|------------------|-------------:|
| Person           |              |
| Bike             | working?     |
| Docking Station  | release_bike |


Person --> Docking Station --> (release_bike) --> Bike --> (working_bike)
