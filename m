Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA3C3066E
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYw07MpO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78572C433C9
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701440296;
	bh=hqUwjOPD5MyfB6e7G1OND+PtYC3HbSImnSmbeaezHIo=;
	h=To:Subject:From:Date:From;
	b=LYw07MpO1MCR1vO/NSrnO0bDU1KUEtySIjdUW2EsK1dZf6/7M8TTixW8ISP2vdCUz
	 9oa0Ycl5a68hodMnXJdGc+aPZFg6+SRVS4BrnDkE93y3PhBDkUVWuXhfh4jTcJL2oi
	 4Nzn2GvwuM7sjoHO/wMewSKNahBGY1SoxPReH9fst40mFhjPuRLrj3ebyLNctjSNUT
	 lJzHtXm8nPDtmsxZbDA3uqB4U+qtYGwAViSS/7qghrHV+aUC1liZUX+nduttZ3IpNt
	 KpY1of3O+CzIr8TL9gNgtpdAv998t4klcLCCTvBWufQ0AveFGWIcgr7KkQ56nA/JUP
	 QNLBvsVFddOyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ECC9C4167B
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170144029637.14937.13910390173373846314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f9798683db12df63e6be83df472f248ff971763702eb530004cc56112269d03
Date: Fri, 01 Dec 2023 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701440296
