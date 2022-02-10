const app = require('../app');

/* describe('string length', () =>{
    // test instruction
    it('test if string > 0', () =>{
        expect(app.sentence.length).toBeGreaterThan(0);
    });
    it('string is equal to 11', () =>{
        expect(app.sentence.length).toEqual(11);
    });
}); */

/* describe('is it a Palindrome', () =>{
    it('string is a palindrome', () =>{
        expect(app.isPalindrome('kayak')).toEqual(true);
    });
    it('string is not a palindrome', () =>{
        expect(app.isPalindrome('hello')).toEqual(false);
    });
}); */

describe('Moderator', () => {
    it('Does it contain banned words', () => {
        expect(app.bannedWordsCheck('Vous êtes des nuls')).toEqual(true);
    });
    it('Replace banned words by xxx', () => {
        expect(app.replaceBannedWords('Vous êtes des nuls')).toEqual('Vous êtes des xxx')
    });
});