Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208997E9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 07:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654153439;
	h=To:Subject:From:Message-Id:Date;
	bh=7ao4EQFIxzJPf3zKpVjNKqpQ98B//NUDhl7MYhqosEk=;
	b=dBQdsB6zeaVf4+i+SCeSo9URm286yrLuoND/S3J2rM+poIcj/0SzQy1eVw3gGr6K
	dndMKFMQGUwSlDl691JgRgQIDLEXGlyQ5iGD2auqVmlQqTg32t71szB880edpBmth7I
	1/Tty1nRgHHKtf/1KTdH5hxdnfRCgF2+Qfo1h7gw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654153439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7ao4EQFIxzJPf3zKpVjNKqpQ98B//NUDhl7MYhqosEk=;
	b=LQKGnLU42sCFNeEpok2gBjsFeMLzKv6EetRfU6TcK/PnUaJWlMWXhsfAQjUTw2Tj
	bePeFjHToNFaHOFPZbpMFdBBBtAwQwWT9RL6KFTJ97mwB5rYkPvKtENwzcS1LhO+HFh
	/qpawhQT8Hhpfzc9CuOAcjPAf+JFC90yIh9fRIaI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181233a6845-71bc8886-9079-4695-938e-7bf5fc9795f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05b4a071ba2418851d69ea38fc39ef3ab367b2be3d55bc300226f1c08e378299
Date: Thu, 2 Jun 2022 07:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654153439
