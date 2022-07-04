Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174527E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 11:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656935212;
	h=To:Subject:From:Message-Id:Date;
	bh=a4vWyEin/BG04PyuCX/NN8ZjzFStxz4GQUs99I6/u4w=;
	b=AISWjyKPTfe3k+sDyrYNi6zXS+nPqyMOtPBe59k417YvN3BpV2aEbRFPx0D+r4SL
	dRVgou4eHfBoQv1jnwKIKocelvuoPuJrUBMvY6Dg/hO0SySBss1n3i9tiRaij53vQS2
	W23RCcC69/rElDrCgSOHJi8F9BBMu8OEQDs+mVDk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656935212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a4vWyEin/BG04PyuCX/NN8ZjzFStxz4GQUs99I6/u4w=;
	b=Ite0Wuzqh/YHNPX+Ia6ZB/Ex2ECfLn2RP6CjwHA0AyPT3dyMRw6ROe6GWj0HUQYn
	frHdQ9C7Avnum2ovuH3uNQK1JedMD3qp/alF1Mv3C8/10Xp+0tDQoeHDUcNviNSrLYB
	T1M8bkwXCmT8Usylq8YKXCNwJf8BYDhO76cStIG0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c908e4df-9c3d5645-cd4a-4d49-8c71-3b60fe00f140-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29b01e39b81dd0bf77a281a8f557c71b0427d491e8168d5fc8594684f9fc1ad4
Date: Mon, 4 Jul 2022 11:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656935212
