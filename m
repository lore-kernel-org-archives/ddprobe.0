Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC789185B
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98DFAC433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673132487;
	bh=ki/SwLJO85URM7lPa0phU0icBRtSn4EY5oTSIJ1Lqbc=;
	h=To:Subject:From:Date:From;
	b=F0ORXqHx88drUxjCQLXpfyCIcmKfsCXluT9iDsG8ctKUJXUPodgl903kbuIyLO83S
	 JBdl1FlceIsa6mfdmJMrfQ62pE0KZHqJUnPv8lbplkGUepsFAho6n6NiI+1mDT3ShU
	 Cu4h5ztSlQuRIs/NwvWWpGxMr7KpUlmvkIt4RHud6Luh0/V39AnoOIADz2PbK7hwQp
	 FXxpTcHK0gvxmTsXiubCo7DyyKJtBAkaAW4CrULd3xDbB5bJ5dWEMmtysmFbUvVGoA
	 vZV6ZUG2NCgMEVOY2DGvy0d+q+MhVJC4gqRU3VVfu1zN3SpLLoYe5F+8RqJdt33jWk
	 J982SwLnrGqWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74C4BC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167313248742.3869.3574383733112807664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff9747d3cf0d6f64c1bae433ed15ddbab176c1dbac9d80d2ec6d942d6978be01
Date: Sat, 07 Jan 2023 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673132487
