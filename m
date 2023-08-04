Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E85A1C20
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 05:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE38DC433C7
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 05:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691125388;
	bh=yDzWNEhSYuzEInCA31VuvZTmkA1Ap7vKCbuvO5Ko9FY=;
	h=To:Subject:From:Date:From;
	b=c8ZzGSmB7qJw6qJ2f6Jtf/qk12ELM7+Sdch+M1UTxA2kkPfyet8io9ZNKaM1WubkS
	 wu/+TAHsMug5LpEHUrpdv4rMTqID4Ow4BNJQoY1KzyDMUwBR4PGX2vzDQRq9TNTuvO
	 cX74qDdOjE12IOzH1TpoI72f3i7GnloGE/9LUbmWIzaesqE+S5ylPDkLOKJ10TmV3P
	 g1wEjVscbJHQFMibzZ7Ua677PUNC7FO2afy9jNh3Fn7yq6HtSiainOQH/OGUt8MhBz
	 lmWBPMCEzoG6I/L+BSJoXu9gXJqJHs4KtwB5bDK/EEtunol9JL8Swb1SOMYzVbO5uP
	 wuMRefrHiGhWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5060C001DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 05:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169112538873.27018.6918546016700337645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b8583b419540f612afb15fc13d3f30d9718ed6d685185b027d1d7498aca060
Date: Fri, 04 Aug 2023 05:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691125388
