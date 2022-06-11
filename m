Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1667C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 00:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654906559;
	h=To:Subject:From:Message-Id:Date;
	bh=87b+3KHN41Ib249i2kRVoi4tFg/UnyHfrw94pHzs2l8=;
	b=O7ltVvB0oYkIXhzF44bJszck3cC3234vMq9/TRIovxKeStoO7BwAZcirnP3nKv7E
	/8QN5gxkC6IZSFi0OiQ3v6ZvAGuZoqFBqYKahjMiQlsNIa7htaJN5CXy3Kbcy9LKIj6
	YfRCHglLCLaI6rnpxET/Ktn4O1M6urqqd/ZfPiJk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654906559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=87b+3KHN41Ib249i2kRVoi4tFg/UnyHfrw94pHzs2l8=;
	b=YmaMXb+0u2+Q+X1t1TOtv/U14Eh7s0b2Sz+3AI774vFr2ikJ4JXjSUjp1ZQWh4yy
	DpUjdN0qVdUu5OcqnZzYRigihvSllOyDQtgu6wjqfMdK6MlVI3XANQzV3BDO9eBOc3t
	QTMv+yvoCgk1C8Gilu9xI4e3FP3irAfW7oaSmDOY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181501e1b06-d63fa662-7e37-436f-b5a0-c0092e4ec532-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 608a6df7e5462f0d1c4f22bed9b2fe2d66147fae3be868f563296b4288cb87af
Date: Sat, 11 Jun 2022 00:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654906559
