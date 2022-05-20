Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0038215AA
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 04:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653020999;
	h=To:Subject:From:Message-Id:Date;
	bh=JSbX8407bjO1PDuZ3aqOwPCAY2vyJj/N4lcyyxJ2tVk=;
	b=fSWlEj/h37aOg+DyS1HDD5lOsKpsSqXvrPy37u13dX736dcQsC7eYXdLomKdxE6L
	yiQcTmZFVgB62aZPVOB30HYt9qEZKoZy7isUm9MscZdnot5RCW9aTNx/FvtM5zI7rj3
	iU6uu2ac7yHpNTJ5+XhvSmkCWKKPfk3VIPyYRLiY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653020999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JSbX8407bjO1PDuZ3aqOwPCAY2vyJj/N4lcyyxJ2tVk=;
	b=UKLYQsKaPi+V6pDpija9kpdoL85AmGziB17+/fPVRfhyVSOwYj6EC/zrEn4u9MwK
	NlhE81LoDdmU42lvW6DYMxyNn2v3zg6wITGtD198k0MBX7zticyY8B/ASHsyHkmapLX
	ag7ruTbp73pQmw1Lbx/aYerV6rlx+eMheZoBTOKw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dfbabe89-e64d8c40-6637-45fd-9a13-c9776efe3251-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eff68d0b4f4a97027c52f57a306e62dd3c502e1a3f26afe721b04e04af8126dd
Date: Fri, 20 May 2022 04:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653020999
