Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E2B3D92
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 21:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651095778;
	h=To:Subject:From:Message-Id:Date;
	bh=TUN9w9UWsNDUQN99f50gyAAx1eGe5365EdVLRLXt1tM=;
	b=Y9t6Zy357/0G+5MI/F0NWNfGlt7/PnIWChju32NQmIigLgXSV3eF5/lYH+fUf9fb
	QVZPDSrHFQKoWiNZh2vQRDR+raM/7zZPQcHQNzeR/uHR9yiIi+CgPRU+Ib5+fRjYjB3
	L+bYpgoaFqwhtcQ/9xG54G48v7PKrM8BQArKZQE0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651095778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TUN9w9UWsNDUQN99f50gyAAx1eGe5365EdVLRLXt1tM=;
	b=OJ+waI0fc58wI8pGaHPB/s3euwSRVHAKAUw/6bozL8cq4QP0kB5H+V8TUIiSpKAQ
	A0rCsP5yujND+WTGp7O64vt85GHOf6V78WAP35Hs7YZFgnkeopLOLYEaQWnN0OCOshc
	L8PU6uAMUMLLtIRLk2efr+nPsoh0OPIH3dkyF5tw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806cfa33c7-03accfe6-d191-4c41-8880-394bc64c754e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25d390692683d890a8229788a8cf8c7d874e43f3041cfce038421df56f19197f
Date: Wed, 27 Apr 2022 21:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651095778
