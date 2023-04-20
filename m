Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557BC17C9
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 02:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1069AC433EF
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 02:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681956906;
	bh=Kbxp3dBYi22k+1ItUtmHYViMllRWsrnTX1nPbX0mXRE=;
	h=To:Subject:From:Date:From;
	b=UhcFgq3ujujilPggTq0PqYW7Vua9eiilgJRLa9Ek+mmVAV7nnEuYhH37L/iBwOmUJ
	 BWOdmlvjU+kxhv2H4U2xqn8GTfdThQ8AtZvIlPFdvD9V/T19u3bywsfgozVDw3kWaw
	 CyjY3lIGt7SQEcx3mhgTtnXUk/AX/Oxr6G6OBqibpSZaafeypGBf35/tsYyoGJzxxC
	 yyuWHppDLhKRDfb2zZo/3ZyTTuwc5OTg55+ju7ZrOsd51vhdK5u+MdRcDjJ1rZtI1J
	 JKCGmaRp0RAOOzG9kvVpwYIQonki5UxnRyc370hy+HEX9tnPwdbBRC9+xA+Bwk0XMy
	 UCBFeFj1ofqKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E80E6C77B75
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 02:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168195690594.6804.5437691832879129207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f49bb232a33b5982b2e4a8a7c3195a512fe9aea6f58b0a3348864262e7e3beb5
Date: Thu, 20 Apr 2023 02:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681956905
