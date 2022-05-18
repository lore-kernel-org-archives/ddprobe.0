Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDD623AA
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 21:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652907599;
	h=To:Subject:From:Message-Id:Date;
	bh=QIawBAtUGn6mLfTC8b0/1JXDOr2wJW2H/OmiQrxuuPE=;
	b=MdKozNdpeD8kNweMpNqSUHy3Q9i1K/SIdk1M1S7cgNip1GFOz/rx7ex1cQycxbTd
	XaEp+c9f5ZGGox+YQXyGV/t3b7X8dsiS4dAJwQRW3HDizMtWfP+GkLMXHX3vwRRyUD1
	oBmIqAOVbqfgNEmkoE3B1ZQzcNGEUsKlZl9E6Fr4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652907599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QIawBAtUGn6mLfTC8b0/1JXDOr2wJW2H/OmiQrxuuPE=;
	b=VIfGwFdvI3oLwnFmH8agkK0esGde0PnQqk4RyW79xZl/BsBzkRTVZO5MXHJKiSLS
	J8T3Nm0p7w0TbN0wpHihZCbCtEkqamtMTnSijFc6iLz+jhl+10U0ypBbW8RlcbIMt/I
	DnMGZmCb30GvLeEvVOgkkfirLwqOMSerwci8lNKI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d8f865c7-6c110b9f-7665-409a-bfa6-bc1d12fd1e5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e136907663e0b4cc34bbb28aa32adb25ca5d8bd3c0a1213bab1f0fea263ad635
Date: Wed, 18 May 2022 20:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652907599
