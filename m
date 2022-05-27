Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2B34681
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 00:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653612239;
	h=To:Subject:From:Message-Id:Date;
	bh=u/wGWsLrEg3LJDpo08/SyVymr42YXKEOV+YKlfsVmCE=;
	b=j74ctlqSOuZvELuRkBh7mkFuT/Tx1qBsS9Cg4+5t4r9yg3kYeKhZaVQEAZprUpQ3
	e1n61OXHVZLQtzlEpNg4laqVwvx3zAjvWlnbnsVrHLTssTkJ0hf8JFDCn6y9t8dQgRm
	nWkMcVh8OSyyqqOsWJlXhXq+BCnLlew7ldkIV0/I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653612239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u/wGWsLrEg3LJDpo08/SyVymr42YXKEOV+YKlfsVmCE=;
	b=jrHFciZKhuGIYWyno/dj/ZSimVuLXHcU4yxcZzf5AIWMMTNHF8Lg419i/AtzWbbK
	cGLTJctjJvAijXpogEWBBWgVZS8X0L6lygc0iJPTn0gUc2guN/2U2PqgF/ruJXmBmOF
	miY+lzLE0zUkdVE39lC9CpwBHA9/NMMMN4DBR00Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018102f859b8-583d10f6-bdfd-4c62-8012-f453c0439414-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0094b172879b0a8ad0ca82f61a3bc2054d1dc886f1f626fb3ae23343526e9ba5
Date: Fri, 27 May 2022 00:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653612239
