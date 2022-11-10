#!/bin/bash

# BUMP 1

echo "Hello!"

INT=
DATE=
FLOAT=
BOOLEAN=
STRINGPATTERN=
STRINGENUMERATION=
INPUTS=
OUTPUTSTXT=
while  [[ $# -gt 0 ]]
do
  case "$1" in
    --stringpattern)
      STRINGPATTERN="$2"
      shift 2
      ;;
    --stringenumeration)
      STRINGENUMERATION="$2"
      shift 2
      ;;
    --int)
      INT="$2"
      shift 2
      ;;
    --date)
      DATE="$2"
      shift 2
      ;;
    --float)
      FLOAT="$2"
      shift 2
      ;;
    --boolean)
      BOOLEAN="2"
      shift 2
      ;;
    --required)
      REQUIRED="$2"
      shift 2
      ;;
    --inputs)
      INPUTS="$2"
      shift 2
      ;;
    --outputs.txt)
      OUTPUTSTXT="$2"
      shift 2
      ;;
    *)
      shift 2
      ;;
  esac
done

if [ -z "$boolean" ]
then
    echo "I received no value for boolean."
else
    echo "I received the value for boolean: $boolean"
fi

if [ -z "$date" ]
then
    echo "I received no value for date."
else
    echo "I received the value for date: $date"
fi

if [ -z "$float" ]
then
    echo "I received no value for float."
else
    echo "I received the value for float: $float"
fi

if [ -z "$int" ]
then
    echo "I received no value for int."
else
    echo "I received the value for int: $int"
fi

if [ -z "$stringpattern" ]
then
    echo "I received no value for stringpattern."
else
    echo "I received the value for stringpattern: $stringpattern"
fi

if [ -z "$stringenumeration" ]
then
    echo "I received no value for stringenumeration."
else
    echo "I received the value for stringenumeration: $stringenumeration"
fi

if [ -z "$required" ]
then
    echo "I received no value for required."
else
    echo "I received the value for required: $required"
fi

curl -XGET -s -o inputs.txt "$INPUTS" 2>/dev/null

curl -XPUT -q "$OUTPUTSTXT" --data-binary @inputs.txt

echo "I have copied the inputs to the outputs."

echo "Goodbye!"
