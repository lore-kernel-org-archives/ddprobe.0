Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E928624
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 10:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657190812;
	h=To:Subject:From:Message-Id:Date;
	bh=qnfTvEXkfwOhzw3y9Ah0lT1+3qL1JdAZEovQft3Vlzc=;
	b=i9DvyhTsDreLbjfWx33TwzzMa7V0eZ7WisjFNeZYpMO6b7nrVqqrU8GCBSJd/a8S
	XTQhmdHeT9UBPT8hh9zs+tGFexghh6lcHl2GRgJRy3ZvVc77v0A9LFYfxqvVZ7v8rmc
	Fd80YX6ID8t1E2YKQPCmw23wlA2jYDHZxMV8+7Kk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657190812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qnfTvEXkfwOhzw3y9Ah0lT1+3qL1JdAZEovQft3Vlzc=;
	b=WnApBUJ7pvbWSQUqyS190As1NLQQGiz8lXLUeBffA+pnp8Hr9zsWf3WFhuW4v8XC
	E9Ud3tIeFkPWE4e/fdsrG3RlliI25fojgZ7cVvu7hL+8WEIcSi+nmLYkLiTwp1+puTe
	dcUaPJ4D4gtrzV9r3J+T6XE6DrxV6P8NGAC5y9ls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d8450a91-e688bd78-55d6-4276-885d-de43e20268e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fe0ece989a0664d140c44d88628051636a5ed913922d35dea973231fda8653b
Date: Thu, 7 Jul 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657190812
