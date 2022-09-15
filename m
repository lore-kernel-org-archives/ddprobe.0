Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B79E715A5
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E32BC433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663207253;
	bh=3CEe4v3087oFnBu4jXd0X1m2kazse8HiZXz7oLfgAkw=;
	h=To:Subject:From:Date:From;
	b=BPrW5y3gBniOyMgK9L4/CJgtm2izy3zdtvxAxAJgh01AcCBbL2mIAHtgMw6gRPgMD
	 hV8gKqjP5DuNWNVm0ZVt9/GvxYO6+TxhjoRDJwk3ELB6XwLJiCjf+pWbcgIux2hjWg
	 vJ4+BkC+VwCWnGRzQ9PHMR2LFPglOeEJ1ROpioEaXJpNbbwVbcXQelVtyAzGtpjYye
	 qjNoElhicUldBmhMgAOtrlLvErX7tsqhuIibvy2WPX8zUQUQEYAXA5KjYKKBHSE+E4
	 h77xFv8NYiR4+FpFBDRrS6tg4DV57Pt0k2Dc15SvmGCqXyUMb5d5C8NLzkvksrVtNJ
	 Crfi4maXOoxQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 543C2ECAAD3
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166320725333.31005.14744501626843182632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b615d5cb2eb57678df109c3e4f1ba85ee1fb3a17e3ce17322ec84068b3d6283
Date: Thu, 15 Sep 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663207253
