Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 761A833E4
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 20:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645473985;
	h=To:Subject:From:Message-Id:Date;
	bh=9cBzLYGhKA5e1dDIOXUM4/kC6ZmFjZ8VF59XglMGHA0=;
	b=Zd/tRpqKNChl+HtJBBID8Q+56Zst1v5F0twzLFDE5b28DYXNJiDVTX7poKP6ZY6t
	n1jM3m1htJ7fWppnrFsEJ0GBhAQmcYQjTcXaC+k/i1cJMoOVS/f6PZF1yRlP4PmuKO1
	D1TwCiXV1XlTXcgZE8BtR1J//IyBov6SvL4M9mwQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645473985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9cBzLYGhKA5e1dDIOXUM4/kC6ZmFjZ8VF59XglMGHA0=;
	b=cFe59JFOIMLfKxXMiYzxBVPiFHvRaTxB5DMOXj8la2B0iMuF/G1iU5vXJcQf9Fmf
	9JMZyapbvw4rE8m70nljX9H1u5DJ6J1sF55+8vOdoF8xrTb2MXVBZ4cKuNaKzoIELYu
	2TdGDFLn5qbnw3NIVKQjSxDv8FjeMPTlq+Ha0CUc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1de47170-8f3d12f7-2a7d-40f8-8258-6af869a6e6f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 475af9152d415637fd23fd667dd3ec92eedc9911b9af6153200deacbfaf84136
Date: Mon, 21 Feb 2022 20:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645473984
