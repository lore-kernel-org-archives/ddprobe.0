Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84C85256C
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661181652;
	h=To:Subject:From:Message-Id:Date;
	bh=se4xRHvzJ2ylyu1zJrEfMq/d6OkFuN2+jFDZYzXMV8w=;
	b=IvDt44IW9GTGQ9VldbctPxiIYstCn4NSz0VoSdhuUJBrv+W50Mc4hObreEZ8zDRQ
	ncNcq4+z6euQbv4shib9RFbiQQDiVzmtivar0c9ZCNUSlbAphhdb24doDv03SAtHBQl
	kvNxsxrRR4+kXzLiP7EiD8pVIFrXoX8AMIeOwRio=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661181652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=se4xRHvzJ2ylyu1zJrEfMq/d6OkFuN2+jFDZYzXMV8w=;
	b=LvhHJ4MBjrKxvkGKDT7aMIZWi9iUbsBYf8Wlvo1BHXBh4uBj5C5WDsn8V2LUc2+K
	xHTOlIpIalX6IEEqmeIAvwD6ru39fyqOAsEOgTjDN4JWcKjUy2YKBmTZVI1ngs/en5z
	XY/U90n2I59qwc1QesJ8ybvOMNdvfcxhME1gRFUs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c6246e67-99e3fefb-2d68-4dcf-9ebf-aad11d322246-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2d9396d776c8eac0f689061e67056097e884a0862cf867f72fafa0b332838f2
Date: Mon, 22 Aug 2022 15:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661181652
