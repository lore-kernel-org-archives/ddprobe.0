Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B61EDD
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 08:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82ACC433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 08:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674549785;
	bh=T5CIeU+XRPTmoZQkEcbe5ZP0fa7grpe3pcX2Pejupb0=;
	h=To:Subject:From:Date:From;
	b=K6INEW6gwvaYlMV4TS8tEjaDGVsYkvIohpCZeyA8fZxggofjK+B2JPRcndFW8hJj5
	 DELAUyGFCOUpTCQWLSHGXSWruWGwlxSrEgPMQPXvl/v8FxtsJgOb3WvXQaxX3G9SoB
	 6Iwwt8kPSZ9V0UmbDgDNWAybQ4f4iNEu0GTMxGmm2MJ3ba+Ra3uHIT0MfNSV/6HZQt
	 B6Vs0/cddDenmgvOLCqNidDe56kAv/yGqk268aYjLYVoK3IWlRqGP+zz2AWGP7Zk19
	 hzKKnr3L7Bg4r4hWJhziz2WaIYGKQlf3hZpT5fAe0qzKac6upKCNl82PdQqdyrV4a6
	 LvrtlULkTq8gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA89C25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 08:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167454978574.21591.17820529852109892793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edc8e9424cde51da635af28b555363f0c2490240cefeccfea2f430774a00f9e7
Date: Tue, 24 Jan 2023 08:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674549785
