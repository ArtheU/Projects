/* const sentence = 'Hello World'; */

/* function isPalindrome(word){
    let wordReverse = word.split('').reverse().join('');
    return (wordReverse === word);
} */

const bannedWords = ['nul', 'nuls', 'imbécile', 'imbéciles', 'stupide'];

function bannedWordsCheck(words){
    let valid;
    for (let i = 0; i < bannedWords.length; i++) {
        (words.includes(bannedWords[i])) ? valid = true : console.log('nothing');   
    }
    return valid;
}

function replaceBannedWords(words){
    /* let message;
    for (let i = 0; i < bannedWords.length; i++) {
        (words.includes(bannedWords[i])) ? message = words.replace(bannedWords[i], 'xxx') : console.log('nothing');   
    }
    return message; */
    let editedMsg;
    const smthg = words.split(' ');

    const message = smthg.map(element => {
        /* (bannedWords.includes(element)) ? editedMsg = 'xxx' : editedMsg = editedMsg; */
        if(bannedWords.includes(element)){
            return 'xxx' ;
        } else{
            return element ;
        }
    });

    return message.join(' ');

}
module.exports ={
    /* sentence, */
    /* isPalindrome */
    bannedWordsCheck,
    replaceBannedWords
}