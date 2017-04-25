json.array! (@lists) do |list|
    json.extract! list, :id, :player1, :player2, :state
    
end