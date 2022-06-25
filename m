Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DED929A2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 23:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656199012;
	h=To:Subject:From:Message-Id:Date;
	bh=AQZM4rjV9CeWVk/tAxLDYSLzOByqGxA7Zc7hycNzOho=;
	b=L9sg8JgiEQlRVj0mp+LhpL6ETvOo/kn07kxCn/F/QAoEfb0NDQOuxDa4FYwDK0Ko
	kDhacWpebD1wlxzF/nrdZr61p436AQTSiHWWOwxMX6+QmBdGVTnx1d0jtfAC5IUT2lD
	gfv3SYWzO/8zyiEbk0dqL5xMrzqknE3pNvIEspws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656199012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AQZM4rjV9CeWVk/tAxLDYSLzOByqGxA7Zc7hycNzOho=;
	b=RJiMvtciZolvkQp0v9k3O5VfzJ61L5pY6pv5GwfeMcfH0sDLj9acs2WCdPUqt89w
	HhdwE2zN0dJ3FlYI2UwlDvoFv3DbkqDlcGaBj28Hq0aRy/sZSd2MGVweVcxbeuwRrcn
	pn1mx8eQu7n2gxm5tQlhYLoIIPV+Mx2pGn/h4bns=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819d276000-6c9d4bfe-72fa-4d47-9c3c-1533c5c1bf13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3aba5a609e2dc7cdb1b12c28b40002d95e59cf8ae4905e721a7c44611531be38
Date: Sat, 25 Jun 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656199012
