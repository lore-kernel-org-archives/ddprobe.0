Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AAEC15BF
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 20:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646080584;
	h=To:Subject:From:Message-Id:Date;
	bh=OQj6bZH3xRU3xLEUlMdLwk0FJfP+piXSJpaZ8jIqfSE=;
	b=JxTjEhCe6by4GNzISe6KxBhk+e/yoppa739c6BBVL7Tv0EVZX5IGMVe2U7Ey22N6
	QLUTx3URUFfyMKydVGTz1wtLAxKSaqwf7+X9A5/UI0pnpXjPdvHPHiTvNZNWaJAo7Iw
	RngbjazIC4mlb861k9kYY1jSN3H1J1VcT4KCQPNo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646080584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OQj6bZH3xRU3xLEUlMdLwk0FJfP+piXSJpaZ8jIqfSE=;
	b=A4e5KCbOaXiphLK/ES8qHxZYAlTxOiyT1jYhiWPHX2C9Aj8OKHF1+GLhpOJwEQIp
	pXn69NK+tQFXoJRn7bo7nQhSQ25UR3MRYUSYeQ35cILrWGeJTW+1X4efWimmafdetaT
	Oduz1wqsVo8nE3w8V0tk+xPbc4/zHiF+fwvlTqBs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f420c6c2b-4796c222-0333-4afa-9178-5fe5c66ae44e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d38304dca626ec5c5f84dc32574e362375cf9aabf7778302619eb7f08874ddd6
Date: Mon, 28 Feb 2022 20:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646080584
