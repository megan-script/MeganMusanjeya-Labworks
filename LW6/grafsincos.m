
function varargout = grafsincos(varargin)

if nargin ~= 1
    error('Exactly one input vector is required.');
end

x = varargin{1};

if ~isnumeric(x) || ~isrow(x) || isempty(x) || ~isreal(x) || any(~isfinite(x))
    error('Input must be a real numeric row vector.');
end

s = sin(x);
c = cos(x);

if nargout == 0
    figure;
    plot(x, s, 'b-', 'LineWidth', 1.5);
    hold on;
    plot(x, c, 'r--', 'LineWidth', 1.5);
    hold off;

    xlabel('x (radians)');
    ylabel('Function value');
    title('Sine and Cosine Functions - Variant 7');
    legend('sin(x)', 'cos(x)');
    grid on;

elseif nargout == 1
    varargout{1} = s;

elseif nargout == 2
    varargout{1} = s;
    varargout{2} = c;

else
    error('Maximum number of outputs is two.');
end

end
