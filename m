Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BF27F
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659607252;
	h=To:Subject:From:Message-Id:Date;
	bh=4BUjhrwQs6XFW9YuZxjZF6vM5kWYjvXHatostPaZrDE=;
	b=fWCKgai8uJXcmmLIN/E5E2ut7ERMguHng4lWmPqkX/sAGroEDfvOPY7aC+V7Nc5R
	SInWPmWecaACMo9QWyEk4nCNiQUvLRdbnv2s95Ta89vo7g0px5HMwx/OUBul6ZqpohJ
	dClY9VWU4aUbeDRsAkrd9mEp7N5g1jMIOmXCxHO8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659607252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4BUjhrwQs6XFW9YuZxjZF6vM5kWYjvXHatostPaZrDE=;
	b=fhe3vES3AiyPp3zgYtKuyPN50pC9WUkk/yOkTC5aRKUlKzLs5vzM/nj5xpIy4eRE
	xYhnoLVJZbezc/6syFmHnZBfCjaraFNFT77aT6lAoqY284HYlCGLkfp7FHD2kk0Xa0G
	mSJ5JYCUCKmniF+BGRTaHh9FBzgCl1CtAOi9MPbI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182684cfe5c-68405b50-50c8-4b30-bce5-940062eadcbf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac463f7584b1c6b3b638adbe2b83d26b42e3fb9c8951ac255a4e67a900c9d44d
Date: Thu, 4 Aug 2022 10:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659607252
