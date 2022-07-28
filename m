Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED521C35
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659017452;
	h=To:Subject:From:Message-Id:Date;
	bh=4Jd9t6dnO2zfpgmn6mv0KIGFtOywaaEyeJmIUx44XNQ=;
	b=iPff0F/ePjObYFZEPOzgxMxJNihWSpkhZFy9Bk2hzWGXKFvCSM5rMjI4woOaH4eo
	NvgBbBhKJIhlKMoXi4qD4vCG/9SogXW3szkucQ37fl4Ld/PJu55p9Rj/Aqn9rZ6WSm8
	lWr8YF30FZbWQpTEV4DBOCzV+PJBsVuKYcs/f0ps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659017452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Jd9t6dnO2zfpgmn6mv0KIGFtOywaaEyeJmIUx44XNQ=;
	b=JHbZDMwwSgYxS1mtCpZpXmYJF1r9d0QD9kyRmNPdm7V+N294c8ZPT9WbORUmZ7bM
	YY5+36QcCR4xuJadVESjNMfUwDgIYAnI/EKDC8wEJfuFUv6N0/SGTY5mhKoTyLKl+zw
	4HNmaSeVopV5ErvH3lShKOEpMgggcmN2WIwkCfWI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018245255c55-7f33317d-7bda-4726-950d-6828fda101b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a48781861cfd3b761b517981db1c055c77f20d944224adf4cb8b960e11cadc09
Date: Thu, 28 Jul 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659017452
