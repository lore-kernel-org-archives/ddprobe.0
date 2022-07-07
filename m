Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13B9638
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 18:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657219012;
	h=To:Subject:From:Message-Id:Date;
	bh=FNFYx9t5o9P/pNy1tCj6h12T1XATIKtROhVfkGN87dw=;
	b=PHnfh+wOmGLpya4nzfTeA8fYBbAEaXpt7FuyuSViV78xWzA2RvQAk1L4youbwbKn
	8UO8Auc3CrwbOhuVQ+0uxU97QcJpWp0BODaD9Z1QoL1bWEMw4WlxJTm1CpBISU2PsA/
	RvyUH/9NMT6K+7HOhp4ANx/q8LYpyObOK7Tjk5Gk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657219012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FNFYx9t5o9P/pNy1tCj6h12T1XATIKtROhVfkGN87dw=;
	b=Eqb4GAeOwenmlJU0mLy19Nj6/mNLLIa/s51kCnypK/KJ6TjAwkrmvmTXT2177Oxv
	2GpujO6JK/1pjy4l4SomHR8BIdCqIWKche78MZv3Ysoit/YZDiYUxkI/CNWGfrTJXZA
	JtNHf2PgDAfXL288E1pQ+Zh4Y2SJX3MgfPyvakb4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d9f356a7-57e246ab-14cf-4db2-af24-9f34aa5fcc10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e461ccf842d76f47a12e165af98c12038e3f55c17f2acf34a29b02750388068
Date: Thu, 7 Jul 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657219012
