Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE757A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657272412;
	h=To:Subject:From:Message-Id:Date;
	bh=sxeXkCEnyldBv6KrQ8D+K0RD89WhC6gTPfvlOlsLeYU=;
	b=DFNZigdpCk3PoyRaxvhg53T3xwE4jiSa0tmGC5uHoO3CNm4tzxlP1GAH8iH8cgbi
	l3WB1EuYqf1ZNoUJ+Ma8ranodsQdMihea4snj9+2wMG19HwwXriMFY3lcr4jR77LbSV
	Iq4c8W8wHj9bMGwgHoA/onDI4EQOexNORRK2GNso=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657272412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sxeXkCEnyldBv6KrQ8D+K0RD89WhC6gTPfvlOlsLeYU=;
	b=Asl8zBKDm9qdHZz5pj2eDwvGv0WuA0RQBWLwx8b6p9UG+M4iwqHruyopXo+yo0rs
	UKCtLejqeFih0FTFHGdYgUzEamojfBI5+QUGwXGBgKys84jFPlv6OBFQxZm1N1jVxlB
	95I6v/gxNhfxChUqzk2HNSVZayQNwdAN3FA61qxg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dd222885-58f7c9d7-2468-4768-996b-bc4d6cdb901e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ffff98925122dc39aaf198ef77a0584b6c4b8dfc34bdd5548aeb4f0ca825ba8
Date: Fri, 8 Jul 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657272412
