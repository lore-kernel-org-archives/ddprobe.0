Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFFB017D4
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 11:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653822959;
	h=To:Subject:From:Message-Id:Date;
	bh=JAmRm1Rq/N7f5lwPvEu3d+6gFfR3dlOM+bA6agFrYvU=;
	b=PPtw+X8EJAKs6Mlx2REsYCcmi8Awg1vGCyLYRHJ2jFjbQ2N1eEL91Tr0hSVY6xML
	1i2lHQG9VkN6Zslj/oCWVXWQrdSKRxP4ky6LrVrAhxvKGZpKaNA8F9GVZEMCkkUdUFE
	LWn/lFijgGhLXFNZbRss/qvrqXLi3vekGIZBUr+c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653822959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JAmRm1Rq/N7f5lwPvEu3d+6gFfR3dlOM+bA6agFrYvU=;
	b=J6mYGWX4jxeOX2IGzwWXQitosJBqt88HkCK58CRv2uUQ33AQGZ6iLUfaYsdwyEAq
	c4/RsWG7CV16Jn6h04lVcJVaVLirvO5p20x+naf9cYrl2H8rvg4Q9LqYpxiMSm3gsyO
	FdKHB+ZxRiY8dyhIeQdDzvuDhX2DqRG4IjphH3XQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810f87ae84-10ce45b5-6d2b-4a39-9c6b-079547f5bb99-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a79949b9389fbdd0094b489f89c1cbadd017274e5fbd3ece714c9c2830f88f80
Date: Sun, 29 May 2022 11:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653822959
