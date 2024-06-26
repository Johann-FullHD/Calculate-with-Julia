# banking_system.jl

using UUIDs

struct Account
    id::UUID
    name::String
    balance::Float64
end

struct Transaction
    id::UUID
    account_id::UUID
    amount::Float64
    timestamp::DateTime
end

accounts = Account[]
transactions = Transaction[]

function create_account(name, initial_balance)
    account = Account(uuid4(), name, initial_balance)
    push!(accounts, account)
    return account
end

function deposit(account_id, amount)
    account = find_account(account_id)
    if account != nothing
        account.balance += amount
        transaction = Transaction(uuid4(), account_id, amount, now())
        push!(transactions, transaction)
        return true
    else
        return false
    end
end

function withdraw(account_id, amount)
    account = find_account(account_id)
    if account != nothing && account.balance >= amount
        account.balance -= amount
        transaction = Transaction(uuid4(), account_id, -amount, now())
        push!(transactions, transaction)
        return true
    else
        return false
    end
end

function find_account(account_id)
    for account in accounts
        if account.id == account_id
            return account
        end
    end
    return nothing
end

function get_account_balance(account_id)
    account = find_account(account_id)
    if account != nothing
        return account.balance
    else
        return nothing
    end
end

function get_transaction_history(account_id)
    transactions_for_account = Transaction[]
    for transaction in transactions
        if transaction.account_id == account_id
            push!(transactions_for_account, transaction)
        end
    end
    return transactions_for_account
end

function main()
    println("Welcome to the Banking System!")
    while true
        println("1. Create Account")
        println("2. Deposit")
        println("3. Withdraw")
        println("4. Check Balance")
        println("5. Transaction History")
        println("6. Exit")
        choice = readline(stdin, "Choose an option: ")
        if choice == "1"
            name = readline(stdin, "Enter your name: ")
            initial_balance = parse(Float64, readline(stdin, "Enter the initial balance: "))
            account = create_account(name, initial_balance)
            println("Account created with ID: $(account.id)")
        elseif choice == "2"
            account_id = UUID(readline(stdin, "Enter the account ID: "))
            amount = parse(Float64, readline(stdin, "Enter the amount to deposit: "))
            if deposit(account_id, amount)
                println("Deposit successful!")
            else
                println("Account not found!")
            end
        elseif choice == "3"
            account_id = UUID(readline(stdin, "Enter the account ID: "))
            amount = parse(Float64, readline(stdin, "Enter the amount to withdraw: "))
            if withdraw(account_id, amount)
                println("Withdrawal successful!")
            else
                println("Account not found or insufficient balance!")
            end
        elseif choice == "4"
            account_id = UUID(readline(stdin, "Enter the account ID: "))
            balance = get_account_balance(account_id)
            if balance != nothing
                println("Account balance: $balance")
            else
                println("Account not found!")
            end
        elseif choice == "5"
            account_id = UUID(readline(stdin, "Enter the account ID: "))
            transactions = get_transaction_history(account_id)
            if length(transactions) > 0
                println("Transaction History:")
                for transaction in transactions
                    println("ID: $(transaction.id), Amount: $(transaction.amount), Timestamp: $(transaction.timestamp)")
                end
            else
                println("No transactions found!")
            end
        elseif choice == "6"
            println("Goodbye!")
            break
        else
            println("Invalid option!")
        end
    end
end

main()