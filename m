Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68BC020F3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 07:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656316012;
	h=To:Subject:From:Message-Id:Date;
	bh=v081VwSTpylli+QmhiEPbMmcZwWuwipdT5AoUU4Fdhs=;
	b=Md27b1IDtSCd/5Jmj6iGJkTD2ZgM5g875A1xrJHH5MkDLFSRv/OlSU91ObCxgIxC
	MUAP1eIe4IPWXP0i3DTZ3IXhJGFzpKABYOL//ooXsrdQIO4Al+GfqFSX1mGyIOJ5R3h
	n/VUwKV4uRf1e5zpVftKkMvbm+oqOMklQiZocDPQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656316012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v081VwSTpylli+QmhiEPbMmcZwWuwipdT5AoUU4Fdhs=;
	b=Qh2TDTPRQbDXAVbf3G+NVxRTDTryxmsmyGVkpFu4jkp7fTykWY1pPZydy/PgQlr8
	U5/c9v0Mav6aIrOMJ4lchwoH6sM9Q61KM5Mj1bIW83Oei2OeEHXtCUP+Vt9hdYY0bFy
	2BjHqv5xGmmnZZSGPmZMue7BSgxaDT91nN48huPw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a420a6dc-61096219-ccf6-4cb3-be95-be5f144e9f1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3a10ab204cd6fe3b3f0087197bbcd4f8b0f6a9c29ede868509ce1143f2dc6b4
Date: Mon, 27 Jun 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656316012
