Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84C324A1E
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 18:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658254012;
	h=To:Subject:From:Message-Id:Date;
	bh=4y4H1lqRN2QzA2KK1Um7LBuXA5HXi2LHKl+28UGe4AM=;
	b=QvmiYriI3M4mK6bbNdgAz5qLvyIt+MyaMCKNIipZEa1qaEr1itB8Gse0/Ya6ns8u
	udNQGg4H3BLtcEadn6GY/F73m+8NtrnyZ4D50N001He067Fv5WDL0a5MQIG8nlYBX2X
	c3yX4Y/0CnKC3ZXoWTPLl+1+pDkEyeiWGC9/0Byw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658254012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4y4H1lqRN2QzA2KK1Um7LBuXA5HXi2LHKl+28UGe4AM=;
	b=VVkLXk1+Zx/2CgvEa7f0m+py0NUoD1fx8M1Q+2FrgCC3jJkOVNncM5py/WehYhjM
	6FJo3prbirqaqrM10D6dpK+4E+qO+ktZIEtW7D0IlK4DKLrMA5hf4FCaK1XDXHaUOYX
	zTU9nCfFx3SQCNL5rzw92VvPMnpXs7zJJ3MfQWZs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018217a42f7c-8aa933c3-b5a8-48b1-aa72-88030d0b6cf1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8e8598729b2e99c122e77b47d965330b6b842e78cdcb3b63dcc4e3a766290d1
Date: Tue, 19 Jul 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658254012
