Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449317B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661316052;
	h=To:Subject:From:Message-Id:Date;
	bh=snH1hqmyWrB9xzgORYLZ4lqLK9gAVX6Q3qKwReDTPgs=;
	b=KD7ew1HrtZVX0JQWFIuRuXuy0tx1gROYHNHbAizAo36xr6Ry5goPk7tLn4xwRC3v
	KCwCgJ+mVhxxrS3kI2lHNqueeWzQkvOqpn+Bd9cQKfRolK5S8U9zUQcooVEp3rg6Fkx
	Q5UuRMvDKcM4J9mq/7gn9BSaxxo1dwnJe/Tid+m0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661316052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=snH1hqmyWrB9xzgORYLZ4lqLK9gAVX6Q3qKwReDTPgs=;
	b=DJy1ZrDPnZsQbUGq44lDus+/pLY1rW3tvsQlijQtBvGJkWZqVh/pHQFAOY+cnH8l
	yA1on6sv+W1z+Zm56gFWGtc35MtKCJJIwwk+e5vgEEvsoxJANfclLlapN3y4V0MZqlJ
	e7sKqBpYm73+cYqDEtnZAiNCGijlkP34dHGqjs+k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ce273662-cb4b0e66-293d-4277-a7d6-a79a9d242617-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e375ecdc9de3fcc3934cceefaa15853726c64d91f41fa465007f29f47da4a9e2
Date: Wed, 24 Aug 2022 04:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661316052
