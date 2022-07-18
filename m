Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D2EA320E
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 15:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658158613;
	h=To:Subject:From:Message-Id:Date;
	bh=E//aoM56nKHhweXeI/QvaojCX2jHi34HZeDx8dTxRHA=;
	b=Cm2NF2mjExWFFr91d7OrM+2mCzx3kwdYdcBU2J/34DVMLdnb0GMQiIMgqwqMAlAL
	QdZYBPjF3+IahC8w9XAbKWKgdt4kSVJotHFYl9rTSr+roqdEZZvK3OClXw9oLVp2b4G
	zqbSsSR5AxOcS6b/evWdjgJ4kpPzOebU9zQ3ctDc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658158613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E//aoM56nKHhweXeI/QvaojCX2jHi34HZeDx8dTxRHA=;
	b=YhRpF/WDZK4EvRo4CSd33stUC1C/Q+haSlpk4oXW0inQ+xxIg7vAZ7VB+2NuALhV
	EvPTzN/DtqTXLrVLATAIpPoTG/NoUMqMIu4GNJeEWK2eTWU1y+VExH4agu8fMU7FUMh
	i7y51gKk3VYkPHq9g5pfKfTFKnx2iH3LPyCWjWLE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018211f47f3b-473d39fe-c7f9-4f2a-b23f-9916f6afc0ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4634a49ddb4cf864359b7630562a26f56b9a88b28bebc7194f7ee1c8c198c413
Date: Mon, 18 Jul 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658158612
