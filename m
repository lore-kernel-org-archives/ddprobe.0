Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A05FEC6
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658968252;
	h=To:Subject:From:Message-Id:Date;
	bh=825VmTTNMAjCLuLUEWA4QTyJWj/j1GdpVRd3h8rmXOo=;
	b=S87wP+MhgpzAUxDleb5BRWOLPN2Wc4SsrUy7AJCVUqyHBv/qpzw21+QblZMRphgK
	TtNTN+ZhFr4HgEy0oBlR1wVjUHHJSkRknRXstKFi60Kq4BYg2ko3P/lnT/F1NGPmbQk
	V4a4ugAyi/wCeu1oQWWJT3UkjB0tHq23KEVGhgNg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658968252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=825VmTTNMAjCLuLUEWA4QTyJWj/j1GdpVRd3h8rmXOo=;
	b=QppMISKnzh4GxxqqlBvAz//fcH7d8xmQjbHA8Egwx2LFd3tM0tv7naqTCO8YHl7X
	v3K3rY/tcyUlVLI8vWuU7E0r/nCCwpBPd3TzQM2Z97DxBcW9yN5k5iv8iojBYXy9GIQ
	mSWxGvg0LAiI9PFr2CFJ6eXaj78pg/mjJATi9lSM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824236a0dd-a805d738-cdd2-4356-ab11-5fdedb9d5ce7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a40b07e9086c0b38217d08f3ea3f60d3f9a5ea3f513d1f284d16dc219e3849f
Date: Thu, 28 Jul 2022 00:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658968252
