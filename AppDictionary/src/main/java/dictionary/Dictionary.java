package dictionary;

public class Dictionary {
	private String word;
	private String type;
	private String mean;
	public Dictionary()
	{
		
	}
	
	public Dictionary(String word, String type, String mean) {
		super();
		this.word = word;
		this.type = type;
		this.mean = mean;
	}

	public String getWord() {
		return this.word;
	}
	public void setWord(String word) {
		this.word = word;
	}
	public String getType() {
		return this.type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getMean() {
		return this.mean;
	}
	public void setMean(String mean) {
		this.mean = mean;
	}
	@Override
	public String toString() {
		return "Dictionary [word=" + word + ", type=" + type + ", mean=" + mean + "]";
	}
	
}
