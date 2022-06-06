Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EA27E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 07:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654499879;
	h=To:Subject:From:Message-Id:Date;
	bh=ZkJsfkOWjE2rWimsSIIdxDI4RMjzxkeHtRa7y8AK4W0=;
	b=km31FKgg5lftoEln2jqyiafTGHkJFI2821vwM3piVLLkUNsujk0k/bg28bzw70QK
	zLZIl2LgDnCFdXJMCKJbM3Ya77Rx7BT272fRqxS8w3xkT2FqE+2uVVHvvLTskZ47FdT
	YPPFUWfwLOrouYONFIYz155/UPcW4NKhOBRLV4gs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654499879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZkJsfkOWjE2rWimsSIIdxDI4RMjzxkeHtRa7y8AK4W0=;
	b=DOGD9OxT7ncxUYhnmrnrAd30pD+EroxbeFXqBhyV0efDxuQ+YOmGUOp6gFmFbICp
	nQR7u22cDWoxpjKFGq6EfwvRGoWbWlrApjp3RWBLg1Z01KhsvQfKbfe589C/nLux4Ss
	KHaHf/OO7tAaoK3HfT1eKZSfFHxysLrGF9k5VbKA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018137e0a952-7d48bea1-7ec9-48ef-b1e4-42728bc6a949-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e59cc6ef8241a78797141ed5a0349d0fa3093816800354a9be95187066177e56
Date: Mon, 6 Jun 2022 07:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654499879
