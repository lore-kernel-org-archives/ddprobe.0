Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5FD2FAE
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 21:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648415998;
	h=To:Subject:From:Message-Id:Date;
	bh=Z+408XuKn5fdxpWYVBvX4XRBhDv3hIhkg6cdlvvzJPQ=;
	b=QHBSDDhrbSffYF8ghaFxaFPI5lyWSEZir0Dsq1gmKVSTQwzDXSMfShbABg3mvvtU
	KhlgvpG1M6Uny0ZCtdbrY1ZMZmu9Yv4pUfNrt85gWdlPLFtdu5Qcthg67cErvGyv1mQ
	3WXM7vplsLMlL1PTKUAqxFuAZRAHBX5esPJ7zS08=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648415998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z+408XuKn5fdxpWYVBvX4XRBhDv3hIhkg6cdlvvzJPQ=;
	b=YdCXzd1W6vUZHgSZw3Rg3hziTUQIL3xLQ6Wej3F07fdfB7bj+2hUenjssNzFDZG4
	m0PLTYIbRnW6rbqK6A2GM5pZ5KxAjKJeTn4JBvRfNALPcSH4Yaf6weSM/QbjGOPUocp
	AH1gIWOx/MY34uDvcIVVeFtCnsO2YT+eMjMbZeLA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcd400147-1a0b172a-018a-4468-b593-b0e59596a12a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66454c52d2cc7d21831e21909d438f2ded96123d3ded7889423dc33d1b0a68be
Date: Sun, 27 Mar 2022 21:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648415998
