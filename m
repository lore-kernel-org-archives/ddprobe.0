Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84B6015A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659243052;
	h=To:Subject:From:Message-Id:Date;
	bh=dOCAB+3us4gPCo9mQRAf+kn526CcQ5BW5VKu4MBnJwU=;
	b=HHoEyFCtwBML1kPQdDRFb5WQdYWVVWusCNTZKdM+1G9jc1i/7TT6ynX6ipvB1k2N
	izXBjAP+LeTiYzTzdH1qKxuGo8CEPgyFOuJ1SpUahEjKxzerXPuWGV617sLJCTztL8K
	hLSj0/ib/47BrJMtG5gjd/oIpfQqOh3+aJbUd2iM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659243052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dOCAB+3us4gPCo9mQRAf+kn526CcQ5BW5VKu4MBnJwU=;
	b=dnLvvPeE0L6GG6Pqg5E0v2IYuXevU1nDKHnZqz4sTGHo43/jAsU8RUiUmHL+nTQo
	P3rNNsiVbrdEJr3ghAtzWjNBltbG61JyG1L7aLJ6Pxhwj7Ae06EtA5EAji690PaL0FZ
	GY6i5d3PVQwbub4kSHwPPTOQuTEKEDoXHI1KZSyM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825297be12-0a0e9ec6-e556-4b5c-bdf1-7aa1ac359593-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf6f549929a867a2f1905db7c9c62eef7c9e5693b1b20139232586865ff14cfb
Date: Sun, 31 Jul 2022 04:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659243052
