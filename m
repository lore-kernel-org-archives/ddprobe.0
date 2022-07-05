Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5477C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 15:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657036012;
	h=To:Subject:From:Message-Id:Date;
	bh=8iONWCrUUl39cGvdOJt5p0gcHUIEAb0VSgNTQ1b6pyA=;
	b=W/2KW7u4aZZUlnG6yVdIgqxjDswWOxh0HUkD5sIYnrr7oNQpusxbsHisftzWlTBF
	7lTsJgzMwpMS9L4RqRb4YnYd0OmB4+GdYYC+G1be8aiU888Psr4vUAHClOpP1FeewvP
	GlLVTm1BcKaal51haug9ISWykTQMzRBz+fN6iEn0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657036012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8iONWCrUUl39cGvdOJt5p0gcHUIEAb0VSgNTQ1b6pyA=;
	b=ND3l2e/2ZlppeX/Sk2/bV1rBywmU7FXVvgKElW1QvQyEQJ6FjZZLS0NqZio3vjN3
	K3lfSH87uLM6g5EmJeh+SbJcjDnMWK7CeG5xW52BplDeGFhBTp4aJgc/WDL4PMUpmN8
	4+gump3aBqFCjAZFyIlH7nGGmctLOr3xHrJ5tNFM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cf0afb50-17065cf1-907c-411d-bdd4-114f01763bfc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9da71ebfe4c0a4f77d47bb2b854e6720ffce9cf2e293fa2dbffe79f4c5d94f48
Date: Tue, 5 Jul 2022 15:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657036012
