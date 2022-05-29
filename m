Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081B617C2
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 10:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653818459;
	h=To:Subject:From:Message-Id:Date;
	bh=iJXKfKxYiluIGlWnsInL41URQPrBZFrc8YTQFV7fiVc=;
	b=M+X9CGYeA0rnnL1m3mC6WetaksGEpn+CJ1gj9zQBLHqX3eJrS78MW18lKrB61RQl
	CVtpF61D9Bazj4xU/mO9odwqg47JjYrHCnzZU5QA8x03XN+vSvV2pR+lXwsrWxLchKq
	QeOTWDn7WBMgYu6pVYmiK1M1N0fTpO9q8SJhPOdw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653818459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iJXKfKxYiluIGlWnsInL41URQPrBZFrc8YTQFV7fiVc=;
	b=huYNiXwbFmmmKqfQpQMAykrxkx8ZLziUjnb/0nUfR9ebTQu+pvsOYCOFJN1zF1Wu
	zK598mfGOQBqnqw/2/QF5S6M+RmnCh/QDOmhJpijkOS+lGVkvSwrO8+lNZNTQgIcxx4
	qVyXoZSjRnFizZh9umlcYs7o08HQlEEO0jF9/Xog=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810f430493-971021c6-8eab-4c26-b95f-aaf7ce48828e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1802e7036c9f8efd4d13c516fc95dc07fcd06b81540483381e58047f25051965
Date: Sun, 29 May 2022 10:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653818459
