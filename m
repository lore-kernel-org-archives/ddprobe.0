Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2057B290B
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 08:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657786612;
	h=To:Subject:From:Message-Id:Date;
	bh=/CJUK8J5oeDogR6DVU9Pzp0iMSB/K7UrovA1hjbmbD0=;
	b=dgorF67gfgOPLmqe6pVkIPNy8WS+sO4lb+UNOJ9GqdlOZawFzAdYOW+CMWTAFTxm
	Y7R5vFme/e2IGKw3X4c8j4tuvzdntz/EB5C1lFzG3OnNTHtGd34xhJJO2kd3lIP67iQ
	DId96vGPo90LbT7zusS7/xGZZJeFYnXNYOMmEz7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657786612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/CJUK8J5oeDogR6DVU9Pzp0iMSB/K7UrovA1hjbmbD0=;
	b=A42CXYN0twAhTHbFpq5ENAToRze98mEOBbIaXwO9fTXVpOhGgilrQtxovcxT9sMv
	VelQ6KzxPXT+YBxUaomGSYxfacRCdTYXrHwFx0pRLQu4cD94HwjNeULkGv3A1GgqUY6
	QOTMZ2uOqPtymvFNTBH8qMd/OamEef5Nif/vFgUc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fbc83a9c-ff0d4472-2bf5-41d3-88d4-9e91c9e044d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 417b70253a28666e5c4772130fdf7c31dcc3458e32eb876c21cdf1edb4f29660
Date: Thu, 14 Jul 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657786612
