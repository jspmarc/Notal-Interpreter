#[derive(Debug)]
pub enum TokenType {
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
