Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2AF87B
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 00:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647823585;
	h=To:Subject:From:Message-Id:Date;
	bh=/nO7jcN8OZIIMi13vGxsx62xotoEi6paUAJ3WQOJAGI=;
	b=VBZzv4qejr+B3gtEPRBPyCTc0RyA34UHfGnD1g/6P4ZN+RGtk0/tC5iZtCA+dRdl
	5ucTvcTdhOme3Daiqu9ApLRNGGUH3nREQfcr3Q45RVROHEQKn06ASafIMfr4XCh2M60
	5s3Jxd1HlTvVsqEZgRd28iVhDWh2vxw8KlakPfeE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647823585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/nO7jcN8OZIIMi13vGxsx62xotoEi6paUAJ3WQOJAGI=;
	b=TWVw0Y5ajlR2MY8sa0ALtipLMv82Z++5cUR7WAWJITk40fy+FRe7dExFrXQvOd23
	EEKkqDWi8eKoD1rQfhPa4WES2ZQOreOA4jqTAMQN2g4+9SgZe7FnJjtqXuEws7B3Bp3
	/EBJLZmw8QZZqKWBwvO52A4fx4SGWd7OmAgoGrDs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa9f07e23-bec2e649-a076-42b7-bbe7-eb5dfdcc2b35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc7034c50a266a321348f49c93abf357b650dead1ac7c9e32c08b2b05eb59f89
Date: Mon, 21 Mar 2022 00:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647823584
