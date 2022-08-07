Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96F3C33F7
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659899453;
	h=To:Subject:From:Message-Id:Date;
	bh=4smxdWPmvIRdFLHo6BvvpjIXyyJgOdybl6iCSREYnjs=;
	b=TrJxptm87KfzoYXYr9dEnMitK9GIlmq+ZuuM3eypIFGcpDb/SkBAnh41i9htQwgF
	mDHkfYOb/upNrZvq53WUet6s+Z5jof2d5HbG4fINN0i1SaVjfFmGujdGsH/PbcNNL8G
	gcxYADFyXQrvH0w9Clis4Mit+Cgwyb+CZEqH0yIo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659899453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4smxdWPmvIRdFLHo6BvvpjIXyyJgOdybl6iCSREYnjs=;
	b=ckzSkXyJphRAnrV0PLMwspv8eCw1HKhOaQa4yV1W7fIXCayot2Lbzdw9VQqqW0EO
	BQHyHFtM9HU1rLRBcCrwxErFYw9sMAZTWyhIUm1x0G7ZEwc8CB71sSlkhk/NwbSjgXM
	cXdostYyD6GHzCsjZ8IWJifcy29bwTLRkuH+2oRQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018279b79c6a-1f0b9b03-38a4-4acb-a996-1f6cbed6fb29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf24dfdb69f729b37316cbc9a4e4aa4646286c69d26737d58fe45cb178656cf8
Date: Sun, 7 Aug 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659899452
