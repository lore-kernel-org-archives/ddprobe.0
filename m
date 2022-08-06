Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF4D21386
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659787253;
	h=To:Subject:From:Message-Id:Date;
	bh=G1wQbUk8d5cKSMJ3cLdHaWnqm8VfPFU4wpjVby+rvsQ=;
	b=B4iXNo6JZQPd4xZlqIuVgjQGPGgyEgmUpNsW45VmcNa120108t7ok/MY+qKfH4tD
	x/pzGypwQgVWdVopRyJlGYzBmIQSJSZBExwMkwF91xl/BjjlLCKKoXKGD/a95nn2liz
	aaBaOAbHbMmQVlojpzKBTWDNLGgwJO4ZnvgtB0js=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659787253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G1wQbUk8d5cKSMJ3cLdHaWnqm8VfPFU4wpjVby+rvsQ=;
	b=JetQGw0jkm4yJQeNbPfpiAaQClD53VW/5PXzKKRcqWLfbGxgb4+soaZkKRkkytV1
	95qmaz1ry/TeKxj0HVsSq1te3a/n71Qw3sziUlHs3nYyz9kF7FhidE8eLgS4Ck7mdQo
	CHWUjJiwb5cr14JOXVpMIvgSt8kDIAM1de/Z/hzQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827307937b-d0d8525c-3e09-4ac3-bf41-b5dba2e43a04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea92aa4baa107995f10bfd9cdc4faf96e174b50da7f21cf534593df74d4183dc
Date: Sat, 6 Aug 2022 12:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659787252
