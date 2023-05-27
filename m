Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D826644
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 06:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDFC7C433EF
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 06:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685168285;
	bh=JCbMYatso2EVTxgOu0MD0aa4kAwp3dstYyGGyFjue7s=;
	h=To:Subject:From:Date:From;
	b=o+PFBfzN8zIM6BJMN8trQwQuSmaJOBBib+xFczI/HEl3G2UsyJFtfwn4Fa0VxIq/a
	 noOJ97pa5VjYBa9cJhfsvwRpt04wentlPbvYJMYxA2oc1Ng0CuQgVlTebrF9qyQ6tV
	 dv95d4QA9/9pl8QdHMN0ICqHxl25cg0jP83vM5GqI/lA+65m4hc20c14kaDJvVJkC+
	 SvCTVgvrcFdbZsGNVehbJPnAm/sWOdyVH4p4U/TY9wkfMtP5ptzIWAwFbLcYyU1RjJ
	 nOAKZA6tirrGlJF1LgMKikT/FaXUFE4xg5WDOlP8KjhmjRP5iKgR3Mj/cy0Gj1ouCq
	 gpM+Nng6gZXAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF655C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 06:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168516828576.29893.1692636056085167298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9118b245e92cc3ef304de16df8007989e0f69d380ac2f9cfd0cb8837f9fd8b34
Date: Sat, 27 May 2023 06:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685168285
