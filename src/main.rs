mod scanner;
mod tokens;

use std::{env, fs::File, io, io::prelude::*};

fn main() -> io::Result<()> {
    let args = env::args().collect::<Vec<String>>();

    if args.len() > 2 {
        eprintln!("Penggunaan: {} <path/ke/file>", &args[0]);
        std::process::exit(-1);
    }

    match args.len() {
        1 => run_repl()?,
        2 => run_file(&args[1]).expect("Terjadi kesalahan saat membaca file."),
        _ => {} // do nothing
    }

    Ok(())
}

fn run_file(file_path: &str) -> io::Result<()> {
    let f = File::open(file_path).expect("File tidak ditemukan.");
    let mut buf_reader = io::BufReader::new(f);
    let mut line = String::new();

    while let Ok(len) = buf_reader.read_line(&mut line) {
        if len == 0 {
            break;
        }

        println!("contents: {:?} ", &line);
        line = "".to_string(); // kalo ga diginiin ntar dia malah append string
    }

    Ok(())
}

#[allow(unreachable_code)]
fn run_repl() -> io::Result<()> {
    let mut line = String::new();
    let stdin = io::stdin();

    loop {
        print!("> ");
        io::stdout().flush().expect("Terjadi sebuah kesalahan.");
        stdin.read_line(&mut line).expect("Kesalahan saat membaca input.");

        println!("{:?}", &line);
        line = "".to_string();
    }

    Ok(())
}
