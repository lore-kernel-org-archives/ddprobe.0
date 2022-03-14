Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E97ED2
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 03:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647228085;
	h=To:Subject:From:Message-Id:Date;
	bh=TLrEpX1a5UHz4JwlSW7o0ttby6APbhcKa4kytoxxNFs=;
	b=SUZJqFHuhYAWW2RWAwsZyD5t3/H9+YPKJdaXAT1wv6QAnjO53wO3ELse5pk7F5vA
	Q5DGOiqYVGJgf+nqs9ixMMSUwJlVa4LVIfaVPkHHZ1Q5PHp8H7Aifp88sFTk5jpJTk2
	XV6fDNGG3CiolQ7C7VJEVh9z0TGTcHEPQs6AcQ6o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647228085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TLrEpX1a5UHz4JwlSW7o0ttby6APbhcKa4kytoxxNFs=;
	b=Gl2/MepJT8SmwlYVvwv4LiCmoAa6775Pql4kC+7uWldcVzSekxGTnFy2QEeGptxk
	8VnThlJTX38DMmnbJlZiMKa7vKZ8BT4olG9X+qTNRnxinYz66NgQT2dK0fh1tekcu8H
	x3xu1BeB2KKVXNyxX5n1g6VEeHdxBoCkTBT7cfaM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8671e240-8d415904-b67a-4e08-8105-bab95f851821-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1152da68b424caf9a103de569374b1da00602a898d530f48ce40aa1809af8c54
Date: Mon, 14 Mar 2022 03:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647228084
