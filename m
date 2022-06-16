Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0B27A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 09:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655370179;
	h=To:Subject:From:Message-Id:Date;
	bh=R7fmeqpue9P5IQ26gLh3Q+L1YXabTIjH6NnZS92Cjpg=;
	b=G9w8WsU2ASAECqyqR+Gt/0zMqmU5q3LcClyYqrn68obZi+nHv/fvkXcN1pIPkJtV
	fxXMs5PRLZqpUzHYpaeQx+ql+SnbQvOnMcT1HaXPI69AD0MVdRmxbtN5apYyoZ7lGSE
	u5p5fBI6DUeFWk8NnnoxxRhjO5Vy1Uh+AG81HObI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655370179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R7fmeqpue9P5IQ26gLh3Q+L1YXabTIjH6NnZS92Cjpg=;
	b=UDrZdZ1/FUn5eknvBwp+P/7ZH3IoDyI7kEeG6hAqxbCPayWWm3hRZHGHvYt0yCsn
	Y7SfSWty5d1TzPwrq6C8KIBItQt1dEnexrz1OM+AfCIGBqmToaeGiZSyRvWKBdAXhqc
	76GquKww3VdaYyaDgbyPfpq2ICDqzKLEin35NsTI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816bc062d4-29e6bfb5-3376-4d1f-b5a9-5d275090db5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 356f07db9ae0d1705dc8e96ebe98fbe14c3346d870b21a5c34afd66f9940c9ba
Date: Thu, 16 Jun 2022 09:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655370179
