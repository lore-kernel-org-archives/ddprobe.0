Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD900184C
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660566053;
	h=To:Subject:From:Message-Id:Date;
	bh=J17btHxvW8UV911uoeD1YUA4NmuEUqMuYXsw+VaPeAI=;
	b=cMFpx/jkv5jfGn9lbYW7r6FaiNUf/WdjtDWw0sNQjkT24IVQnpG6sFGPoLsBC27c
	vWGicpKGjHbNjpYI4hib8D21fE0rreul7ufXbXIABw2SZkNkyQyJ2n51VshO8h5Q86C
	Fr8cRaVKHzlTyKLxJThjE2Ry5my6SD4AXJ6ccb80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660566053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J17btHxvW8UV911uoeD1YUA4NmuEUqMuYXsw+VaPeAI=;
	b=Bg2w0KljxeHkQBW+yodUuVMu5g5iyqBgT62iOrdUrz7MQ7vUt+50Goq3k5yNLDDJ
	o/87j5MR08MHqTTNNOpBebFg0NLA8DC1gth/wL4m56olx9yQUzxPmzquM+Go6N3gTVQ
	7/xOhhqcK5w3WT7zzigpROO4mzuJoiKDK3HLLeSg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a1731eae-56aee818-769c-46ad-bfb0-9f94b1f640bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 541913fe7891691d3f5b025d1e8a8c5c5953b1a10b99f91d1b9d257f81e4b149
Date: Mon, 15 Aug 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660566052
