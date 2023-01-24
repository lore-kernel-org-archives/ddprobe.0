Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339E62FB3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 13:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AB3C433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 13:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674565385;
	bh=7usepu41kRoiY39g2Abjco+tPeY/MPeId9/JvMht3PE=;
	h=To:Subject:From:Date:From;
	b=IHb1jgaqW2mbmDDPPtiiSJP+dcjCahiMbQVY5nGWVvUj0pv83orODvzwGPmyvnsQb
	 uMVSF5z3McrDSlABqQY3Sc0xdMy/CmRYpnYZOabgSTu7upwFszmsKIZO0xUbq16q8Y
	 2HG77KJROYsYFg4pmLsiTW0kRe+5CFcvrmAHujxDcroGYtWew93QizmbXUqzdhCAkW
	 xO+XG4PbFwZIEwgyYlD2iq5v9tU4xhA0D6wJ0Flnmc1yK3aMTuLzr8ltrMQvdDDM3r
	 J/8r5fwaHKWYPlGf4XDmEaPerg02OsHIXOGw7FPfok7/Meo7MKN9g3hxXeXdi5EvQ6
	 o1ZTQFI2CVQNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C99C38142
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 13:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167456538573.28569.1322294241802531543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ba996141733f7cb2206469d50dd9b147621294231b7e65a471d4fec000d3ef
Date: Tue, 24 Jan 2023 13:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674565385
