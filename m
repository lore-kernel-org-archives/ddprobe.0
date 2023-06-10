Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 851A3290B
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 22:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED364C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 22:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686437526;
	bh=ftfRpYLeZmOFvD9d/5q0Q0PvpRsisZKnfObmON05+vQ=;
	h=To:Subject:From:Date:From;
	b=J9iXPYZwcNny+TUUfu4ZDDv52dxy0oLod5BCEHCaTU+hI8MTYTMO4l/tPDj/B7H2w
	 N+X9T9AQflroFhvmVgKohVrlwdJxOFoWEEJNNSUlU2aSq2ORsGagevS0qu9dGALHIY
	 3IHlPb3YV1bwGkCB1JKTElFPjOJ3/G+F3ziX7eoOTv3g2jAR3jXPJvlmwXb9QI446E
	 YSJLO72VxCbCHTRPkcQxuKILRj8a9hlukM5Z0+tbuqVHEJ3E1YIzFExe6Pa1BKfJvU
	 hl2ZM5pbPhJlARp5ZedU6Cbq+eqCy2SL+ghtlGTdtSuNGsvriTHQ0f19Vd9Phfq10L
	 WlJcmb84HNdzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0EF1C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 22:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168643752584.2151.978142961737653611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e610727fc00461b925f42f222611407922102f3ad663299ea700a9b66eca6e66
Date: Sat, 10 Jun 2023 22:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686437525
