Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD23A4A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 06:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656569212;
	h=To:Subject:From:Message-Id:Date;
	bh=TkVYCPcsw99hbOmiNHLe6+TLDMjagFagJYO5TIiiurg=;
	b=SSX0mFZaZyxRez00nNsCSRCTzfWNL3xiUXgBUdUnZQHyvhWtLW99AW1hFSa1Zkw2
	L8dlaI8w28O7aeSnyn5UVi2WkZ6tNuhOVDBYmq7Z33XL16cVAZSJhEE6zOFSHsiqyae
	NCGGiJG3L5KdYvPjXtdG+0zI6AGoT/BIcMW9AAic=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656569212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TkVYCPcsw99hbOmiNHLe6+TLDMjagFagJYO5TIiiurg=;
	b=EpEhYlqsbXkLtJHFfIc0jp18oG3PfvDS+CUTHdHYKmtE1Oj3/ZbwhrkAG2Yo+EJv
	ATMFrw7Nu9cATFbpUZkh53OQ+h1HepfJAmhHhNg7B77py1KdeVdvyB5oyy11OtiuLn8
	peKHsOXoquIPNuNHMmqEuxi9h96m5Viqne30B750=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b3382dac-ee34e2d6-51d5-4ee4-9634-6af9f492a559-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a5a21003154f471b6b3b3cdc24f8e3c82f41757ec172135beaa5325d5dc0062
Date: Thu, 30 Jun 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656569212
