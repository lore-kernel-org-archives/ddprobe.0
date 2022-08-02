Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 792B37F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659407453;
	h=To:Subject:From:Message-Id:Date;
	bh=2OrAIaf5QgCXKRacUOzjHnbbcp6+jj6I2+wWSAvwqLQ=;
	b=aFete5JSNT0HKlm2xYEAZb6OL7wMt3IGipJNnN4/DDD5jAPqdFIy2lMXSH8eU+K+
	7dI14xLI9LsQ30zIAQgePppL7lGMKCUrzqQ17CjJD1AqzQbQNIgJfw0hZx28q3iHTRB
	qVkhVfJK458cQLCePxUDF6MQhmVWqk9dlcTK0WKw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659407453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2OrAIaf5QgCXKRacUOzjHnbbcp6+jj6I2+wWSAvwqLQ=;
	b=FKD5c69Q6yNRnKXWMRc/tKP3cuxrNF0sh0ZNpHUQDyi4J9fUOstGESiNQcN4nSRH
	4H0qLC60+yN/yFDyKfO5bCj+m49pMrQU3w1oIknBLUcpiVpxv1R/78jgVKFaWlDXLW1
	N/xKI27oDzRFYgxe9xViN0TY59aewt2jtPxScMt8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825c6449b4-0b8987cc-ec4f-4dd8-8203-996be2200fac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7e969eead4062c4ac67bf54ac11abcac42e5f732916894e0fa53e02acd043b4
Date: Tue, 2 Aug 2022 02:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659407452
