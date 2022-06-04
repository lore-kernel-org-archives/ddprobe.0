Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCD1EA0
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 00:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654302059;
	h=To:Subject:From:Message-Id:Date;
	bh=u4+WIKsn7DTzOSSR/k4Op/wfqTajMq9fcKSfvWAKC7I=;
	b=hFiMzacnbKVZs9e5B5tpT6yBBHDjgmz6m5eAEXU3NG4vmdv5SBRTuasS8prn6kfw
	DnMR4gtUESLmjGqFFXpwTTXKs+UKkq36Rhr2ILHm/mG9PGLOWgeJvdeIpsKc6XRQbNs
	+To9ARDjI90YR93F1eAtWJTilGYtd4uy1koMO/7g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654302059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u4+WIKsn7DTzOSSR/k4Op/wfqTajMq9fcKSfvWAKC7I=;
	b=bUl08FiXK5fwzfC6FU12yDk8IDTB6LbIdVVuuvci7UHAZrGQ6DZtqb9TPF7aELA1
	ruf6/Yb/B/TedBN5NKV/7B+Yk0ymP7qf20HAY19uKmT60Z6laXBJOKzwE1d1XpKyYSO
	ICHwsKSaDqPDim8q8JQwFAeGS+i9EEJK9rODHLyI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812c162ae5-df187051-7027-41b6-9b8b-cf7510e41e12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c73cfdea281a3836e5ee4ccf7f090cc12151ae1cf0ca22f831545b1a3ce1d03
Date: Sat, 4 Jun 2022 00:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654302059
