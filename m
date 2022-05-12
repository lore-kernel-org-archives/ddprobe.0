Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A897317EB
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 07:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652341080;
	h=To:Subject:From:Message-Id:Date;
	bh=vW/TEyGwvCqOoNxWhOn82T6fQiVpna5OShCkRiNqoX0=;
	b=GfbdQnUodNvOFlziFBA2lPZUxsaxHdTiv1JY9pvg/Rdh5fLZTCV7UCG9LEoO8t68
	WdD039vbY3hbZnP2YhZ4XKraHnx+itPTVndxaepT9yRENZqgMrEvs27ScFGwmeL6A9I
	RQgM6/lkX9YVbLJd2jAXINz9wQZ0Sd5cEYEMTFYw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652341080;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vW/TEyGwvCqOoNxWhOn82T6fQiVpna5OShCkRiNqoX0=;
	b=V7Xq6emiwc2QXh68D2pxkFgF+wk5V4u8uwF+sONGgv0C5hXDxedxdvy94dud2hl4
	NjBYSSYEBvqj5ZF9eTLNtyptqkh+lhRbyHcSfXNrcVPulPeJdLV6/u4SxCBITraxNHI
	wb8kvjM3B0gTEtDE+TffAnM7OEhhNC6fIQ7+RivQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b733fcf5-14723b37-8408-479e-99a1-ddf0c1ead890-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d417975e0a6d75d4771f4b9e3d54c4e6f970b5fe2b53ae36b728ec28168e1410
Date: Thu, 12 May 2022 07:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652341079
