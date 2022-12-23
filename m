Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46A315BD
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89503C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671829287;
	bh=r3sQtcCF+hPwQwAONa8EoBdu1cS3jPgZSzSf7Gwfl50=;
	h=To:Subject:From:Date:From;
	b=F2O/d+/isXGcCfXOA0cBmurTUVeb4q9jKfc/KwvVBj5po0FpMZUpmyL7lhE2TMBVS
	 KvYK2R9HRCS76PU4tkySoOQeU2vv+CBp9nbsqhVHqbULgV7F116d7xwhtV0O6CoU7s
	 DIHzHmar+EiA6N1CvXLWO22koxi5xP2RGOe0LCMUwgerBLkVbCsxJVyuR/Jct6ExRU
	 kMIK/q+OpMaQfypyIRR7HcNSwvvFjFwdn06zZWWXNG89HC6tW0LVQOTQNRvn5qQSnD
	 061TFDQBoWCSqv2u0w9hA1UfrX2BtF/q2WG9hSpkSMcRmqTDWml0w0tpc3/Y32/OcS
	 FBAOmDnlM/DSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BA43C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167182928740.32029.5683751529000846350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b4efe82d21dc7ac9ddd5eb8d4c06ceb3cc18702e8d4948827036bf857a6508f
Date: Fri, 23 Dec 2022 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671829287
