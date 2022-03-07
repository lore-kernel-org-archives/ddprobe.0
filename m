Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C5C4350
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646688685;
	h=To:Subject:From:Message-Id:Date;
	bh=1Tg/qs1RLznnLGQ22ooIxr0+V8aCaPvZy7a0TK2LBz4=;
	b=EbZ8P5kX76PVp97iL/0eQtyKgO3tgFGCY1l0s0IZusSeqHjHhHhP9a9HGxpGmLxV
	eIWvZ5HO5pwK6qL47Bz5SysoLOhe3ny/nrJvaQUGoUsPTZ9wFt7n63j6bMBVN1J25cB
	N91+fZmaSOR/Z+iTG9FJWDU7gIt7q18G0ZFB3m+w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646688685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1Tg/qs1RLznnLGQ22ooIxr0+V8aCaPvZy7a0TK2LBz4=;
	b=X19miGLgGc5R6IyhJMJx98Asf5J2vVaWVyeFeDfing4A9O3TvpTGcUPki1cSfnxr
	QJby61GtZ/2/GrqlL3qYtFsy4expVaCTL1SQl94g6NIbqsPzBatN6I96gQDtwq9IKxL
	C7LH7F9dndedoh1dWkWyMUO/gDuTE1jREHojCMFM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f664b4b0e-1e265f90-9e30-4ae2-a140-cf9c92ab94ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffaad8ea7eee809e393385c0b76abec83983fbba5009435fd0d088d6f6ce24ef
Date: Mon, 7 Mar 2022 21:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646688684
