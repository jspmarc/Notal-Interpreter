#[derive(Debug)]
pub enum TokenType {
    // keywords
    AND, OR,
}

#[derive(Debug)]
pub struct Token {
    lexeme: String,
    line: i32,
    token: TokenType,
}

impl Token {
    pub fn new(lexeme: String, line: i32, token: TokenType) -> Self {
        Self {
            lexeme,
            line,
            token,
        }
    }
}
