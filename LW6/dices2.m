%Name: Megan Mutsawashe
%Surname: Musanjeya
%Group: Ekfu-25/1
%Date: 09/10/26



function [dice1, dice2] = dices2()
% DICES2 Simulates rolling two six-sided dice.
% Returns two random integers between 1 and 6.
% No input arguments are required.
% Outputs:
%   dice1 - Result of the first die.
%   dice2 - Result of the second die.
% Usage:
%   [dice1, dice2] = dices2()

dice1 = randi(6);
dice2 = randi(6);

end

