Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA297B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 20:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655670839;
	h=To:Subject:From:Message-Id:Date;
	bh=1XTxAI39jnGLfviLoLJ4q8gQjzLazducmYugiaNWskU=;
	b=BtShYWnZp5b+H5kcPAVO1B9lI130wZqhypLU93B8oiW3ZE9fTiNlCrB+P9AZpoiW
	2fy8ZVcop0Vish+mTg2wK1+ybVlDWc0GQ4v9H7Vyt8ZsBjKJLYQZjebBDF2+ujvC+Rn
	VDpv7XXx3Fql3SZw3Sf0wKOScxigytWN1qOaORik=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655670839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1XTxAI39jnGLfviLoLJ4q8gQjzLazducmYugiaNWskU=;
	b=a6R2oOTCzqDgmnBP9K4wgR6igQe21TilojTxx3MRn8r8kEUa8Xox7JW2/XDt+aTf
	kcajHUOtvxugiwUS80mVMUl6JGvrfIiVCbq4GBhi0Ehfv5Wv12qR5VbMrZ7So7wIDNI
	sh3h2gLygV/kfpxES8s1IWJNpG5zoEkIeKTXBlu4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817dac17d6-5c23c09c-80c2-4ab6-a69d-e937b2fb5c01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2a0dc81e2f02842dc33797a3059849580518a0e3d2a6ade77d8ad3298eaffd5
Date: Sun, 19 Jun 2022 20:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655670839
