Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCBA2F2C
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 14:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658155612;
	h=To:Subject:From:Message-Id:Date;
	bh=vlmqAqhMx5bTJa4fbzi+0iNkXHXefVXD4gIy3+jnpDk=;
	b=HJ3kA3lYdwv4aEqLJF4TaofNOp57lqSZjg7Gwc1oAxj2l5OE+8jB3Pu6/y4HlvmR
	CjbTF8wdstT/QxpmrlL4e4e1+91FAZl6snxCwYhdk49KyjYYfNkYy1W2tEu2eBPP4rx
	+HzRR2jcVSxmylbcPD243KejMDjLOJZ6ori8Jaqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658155612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vlmqAqhMx5bTJa4fbzi+0iNkXHXefVXD4gIy3+jnpDk=;
	b=JqSSfgcq0bQYLVwDZJECs/jkjhuI40fQfosHdRYzStX2B8qVCkveaji/OQoDvsGg
	aPRkY0gGlwS0EnswnBVPYK8ZYKuSCcYeSarWzJGXSt14VzIc0dQSOU23XG5D1dK3gb3
	q8oCzissh46AMh874oyN+K/txiDwX/7f2pSqs9F8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018211c6b8c1-2a16f913-60cf-4414-829b-39e14bda8019-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4682625e7b2e1e363685aab1dd566cd3bd4ab83cde838e690dcf195bcb4b6ee
Date: Mon, 18 Jul 2022 14:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658155612
