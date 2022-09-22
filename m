Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB692902
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68026C433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663841453;
	bh=XAECNbyB6ny5O3MOUoXSYJRX50szNYwMg9F4VOiQmX0=;
	h=To:Subject:From:Date:From;
	b=e+UjncHdxBbTCO+Xg1qGbxSRFOzAlkow4Hf6wAskwl5LRuyUq8ape5Akc3Ew1gaTG
	 nhaKVJXQaNMv2lRMrZC3ZxPLQ80dyyp7NbH3AJy5sEzTOW7mQXgxV6hVvDmrnfWCrX
	 hRj5nI5HboW4WmqjO0rMsaZq2Uen9S+kTimgvKsdXk9zrICxT8/G71naxKuK+dkI7d
	 XanvJbbbTRWDTxJrU7NlTwOoumh3cWSJ6G1vVQD5PUUVLu2qWYiZWq3xH7HAj7X8ob
	 Lf2fPtDbEvCGlxtASgbOOO1hVqonX6T1jKQMKbBjFzTMknnFnD3xlnjhFSllm5sUw1
	 RjTDl9/c9BBEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E45C6FA82
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166384145332.27042.9573716616435558907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d095397fc60e7b2f63a95df70ef2c69cb0e320b56438176d96b056b1053efce
Date: Thu, 22 Sep 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663841453
