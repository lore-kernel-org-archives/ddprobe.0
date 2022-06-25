Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F3523C8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 11:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656155212;
	h=To:Subject:From:Message-Id:Date;
	bh=ybZlmmSWbeF4E1UJh7BnC8K+Zl+UIiNXv7La8CgLHW8=;
	b=C3mXpwBjSol1lMgV0HAb7sAq2KABhdIfYOzLuyu9ZZMChI/keM4UwrZ25k3NJJ0D
	aNzHvP1x5FB5PZeU9xQakoTxvCYMikQ5RiMUGm6frZhyNmbrgwF9/ECG67r5YatC5WY
	/H07sTnugjUQ7ThUzMzM2qa8sG4ABYQDAPXBSSC4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656155212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ybZlmmSWbeF4E1UJh7BnC8K+Zl+UIiNXv7La8CgLHW8=;
	b=XZ0oF9n4YLCmHyMcYIC6Kw3v0Xmu46YGnQBT6w3CiiNGCtmIJEZ78JbulxD0d932
	YEMiBMtkyIgzO7pEq9NHI1rw9Y+1RjRnIwgzn8a3OnAX25uS7ZLjBLs8k01jRsEmGdb
	RZ/6Fbsv7SR73QEX5FxZ1Zd1op/U0hjqG7zk/WvE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819a8b0a12-db780f17-aa1d-4661-a91d-2e82b1f4e6f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a656bcbfd6e1d66a4a575bebfe44b70b885151eb158b23542f5d2f14a92ebc7
Date: Sat, 25 Jun 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656155212
