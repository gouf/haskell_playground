toPart recipient = "Dear " ++ recipient ++ ",\n"
bodyPart bookTitle = "Thanks for buying " ++ bookTitle ++ ".\n"
fromPart author = "Thanks,\n" ++ author

createEmail recipient bookTitle author = toPart recipient ++
                                         bodyPart bookTitle ++
                                         fromPart author
ask message = do
  print message
  getLine

askRecipient = ask "Who is the email for?"

askTitle = ask "What is the Title?"

askAuthor = ask "Who is the Author?"

main = do
  recipient <- askRecipient
  title <- askTitle
  author <- askAuthor
  print (createEmail recipient title author)
