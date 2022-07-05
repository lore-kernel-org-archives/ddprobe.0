Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4212F34
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 08:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657011412;
	h=To:Subject:From:Message-Id:Date;
	bh=U9TBxQjU52mp9n5plWM9BOEQguufioATKBKdkefGTM4=;
	b=N4ERE10FigfstM0ZaRCQQMp1+eKammdaxgZib6j2nDu/2p8QwiBGwHiv+5kdLC18
	Yva5cNyU3CUBHOUyKvF99l0clhBHC3f+D0ViUeFsPl3+tph/gPu/QbFuDr64Z5ER6dJ
	GPzB83Zd+ZEQ1s92BhB8EJs95Sz12kzRjvGvKqiM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657011412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U9TBxQjU52mp9n5plWM9BOEQguufioATKBKdkefGTM4=;
	b=e8R+K5OvDl+AccxSH610lolaSN0gLRtV6CCPV+0G4zH/ospK5+AGdL9s1M2y0slK
	TIAxcFRwAQYAKSLjmJTHHECmsnHOt17+23OuqpCkLsJDbQAYtFL820Qm390RpiWluEq
	C+jetzVipUBr8YOyVTybIrDLOF7t6/wSBABJrZ/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cd939d3a-67dbe543-38c8-4878-9575-52c81aa610d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43f594fc6148b3afb330c7cf5cb77482a33834622b973988bde91ea164edafc7
Date: Tue, 5 Jul 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657011412
