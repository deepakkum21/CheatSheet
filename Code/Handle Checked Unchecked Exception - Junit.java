import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.ExpectedException;

/**
 * Example uses Kent Beck - Test Driven Development style test naming
 * conventions
 */
public class StackOverflowExample {

    @Rule
    public ExpectedException expectedException = ExpectedException.none();

    @Test
    // Note the checked exception makes us re-throw or try / catch (we're
    // re-throwing in this case)
    public void calling_a_method_which_throws_a_checked_exception_which_wont_be_thrown() throws Exception {
        throwCheckedException(false);
    }

    /*
     * Put the class of the specific Exception you're looking to trigger in the
     * annotation below. Note the test would fail if it weren't for the expected
     * annotation.
     */
    @Test(expected = Exception.class)
    public void calling_a_method_which_throws_a_checked_exception_which_will_be_thrown_and_asserting_the_type()
            throws Exception {
        throwCheckedException(true);
    }

    /*
     * Using ExpectedException we can also test for the message. This is my
     * preferred method.
     */
    @Test
    public void calling_a_method_which_throws_a_checked_exception_which_will_be_thrown_and_asserting_the_type_and_message()
            throws Exception {
        expectedException.expect(Exception.class);
        expectedException.expectMessage("Stack overflow example: checkedExceptionThrower");
        throwCheckedException(true);
    }

    // Note we don't need to rethrow, or try / catch as the Exception is
    // unchecked.
    @Test
    public void calling_a_method_which_throws_an_unchecked_exception() {
        expectedException.expect(Exception.class);
        expectedException.expectMessage("Stack overflow example: uncheckedExceptionThrower");
        throwUncheckedException();
    }

    private void throwCheckedException(boolean willThrow) throws Exception {
        // Exception is a checked Exception
        if (willThrow) {
            throw new Exception("Stack overflow example: checkedExceptionThrower");
        }
    }

    private void throwUncheckedException() throws NullPointerException {
        // NullPointerException is an unchecked Exception
        throw new NullPointerException("Stack overflow example: uncheckedExceptionThrower");
    }

}