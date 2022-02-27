Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FCE02F2E
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 03:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645934184;
	h=To:Subject:From:Message-Id:Date;
	bh=ieucvTk4CLkD+cgyWEa8t/F8K3avoEzHigfFcxguG10=;
	b=S0fYeWj+UiD189i2juySmif3WscMdWDOzrSorSbhsc1ntiyXPxzmi+tgDDE3colj
	4eUPsm3WbXFSxuc+LhcZNHM0cFgnu8Et2WSMv3J5f/VoyNxVJZ3WK0zXRYpEhIZGa76
	oUGoFhxlPBSCZFTQ+r+UEt1yhpuk4oee4+RVZsSQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645934184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ieucvTk4CLkD+cgyWEa8t/F8K3avoEzHigfFcxguG10=;
	b=MGCg06GKgFVb1kfe+i6tkOE1KV/X6l4V/xTP/nnnYhQ8SGodxSXN9LMG/rWZa1zJ
	YHrJjTQl6xv1OAqYUI/nZjJHhNfQG7Fdy9aACo0AWh9Aqj3IiahQX7BGLKFGJdlFWeP
	zfahULQy7WDaROFKDV4pKkRjKuvhoJZpw2g14KEg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39528957-81853028-02ca-41ae-875f-e7209963f036-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0db6c70964cac76d291903f066806363b0b2aa351c8d076d1624419e68a8d507
Date: Sun, 27 Feb 2022 03:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645934184
