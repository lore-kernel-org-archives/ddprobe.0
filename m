Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4963D7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659370252;
	h=To:Subject:From:Message-Id:Date;
	bh=nj3SrwPhW9wCD0UgbK1XiCCH1oTdwCBPGrtcWwEmlOY=;
	b=j/uCXDyQE505Q9lv1QMNZ40P6dbdHpuH540mNw44LrTNqgwZr64WacwoKFXjqcrD
	ozzxiqF/0YB44kUurPrXn2IpYo2sdry3xqxUcm6xz9FmGTKIB+mOOcU5Z5vvZwF06cT
	4IjawZqLU5e3/h695+lQHDGET5TK4C1HfplwQy/0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659370252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nj3SrwPhW9wCD0UgbK1XiCCH1oTdwCBPGrtcWwEmlOY=;
	b=QafQRRQOdldp7RHq6KekOfmD+RdlOSRR/TT9HnB4FpeB4OHPslAcjzXCWDcJzr03
	DDM3s2UIY0vMLoDwnoAKzd8kSxBx09yzJmsQNgZiAroAaG3//uZi/VWG1GhxC5zjsb4
	iSBI3SG2ahnmdvGBPGzCoxZ0DyDkG7tUBt283g0U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825a2ca90e-f9c627e3-6d4a-4ac2-babc-58a86ae65263-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb92091f5c0c16de318c8c9675dae11ca4dde7f5d2011057421f1b6836604e6f
Date: Mon, 1 Aug 2022 16:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659370252
