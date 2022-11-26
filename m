Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C020917D4
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F064C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669473654;
	bh=5BH8gQjdeWByHYMVbdp0LXKY5rhJw6LVeHZ2lLS69hA=;
	h=To:Subject:From:Date:From;
	b=kFDAxrETwDh8EWnhcTNRV5JmZr7IxT7F+g3iduC+aMsWQrUV9wb+n8qKcAFVB30Ss
	 tZu7R8B7BIf+Rr4z0JQ7SdrqMQchdjp8UB4W+EFA0aSchm1FNP/4vsCKdtn9OeN23D
	 lKC6cyeAMCv3Jyg4xsUkV5Ht5M0HWfF+fRuZBc3nvAR9x6WbAR3l/NylXxNFGUiKvg
	 dZ6WHc3RXCGrMiYygCb7Rt4RTKmJEjGG9VVLzTLtK9RYDCMh9WeEpMzh6P0M2nUCs+
	 3oNSi+sg77Ns3pwsGTsAGegI9yDU4oeJwm3y3PJuJdXck9CwTk/bqGYMwc2tLHlFS1
	 uuwS+mN9+PDzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5179DC4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166947365432.16694.3446846889394884151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c78fc4380ee5a5e6215b1fd2427dbfd531c98dc38b5112326e23ad74adc85e
Date: Sat, 26 Nov 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669473654
