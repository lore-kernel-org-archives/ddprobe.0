Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA73B15BD
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B9E8C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671831087;
	bh=onx+ocChYWXDiHo4JVko/rCOQEzOVyqgnNYsrWrXBk8=;
	h=To:Subject:From:Date:From;
	b=SsVOgRDtZkPHM3u9h6gfdFONxotsbeVkn+IwXRCQ69ndrb0zKhcO9U2qmIosZx17z
	 /EFDrpfop5cn8YKKVfZpoH84AZSIwHMtvY3gHPO71+wuj70n1VhU8CLlaUZU47OL/E
	 6g4dxVPYfBIMiOfo+m1TDypk5ZAWH6kZCoI8rX3/IFbGHgobRk/LygHLGBzO/r4gJZ
	 ko33QFifDGj7Hmn4YHkZwmsnnZ2HG2edp36UbcCJJ3XVGywpPmVF7J3DzUN6wqWPAd
	 6zCHeOql4Sh4ZKqrPc/TCm3+miIq9Z1SwpcNFBLgtBEDCTXsGxOmBStCUooBdNzWiQ
	 SnlKgsoTGso/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6429EC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167183108740.28744.17435579824090240916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bafe8f9e13f5fdbc00c994acdc552fb2f4549ef08f07a9344b12dc62efa1b813
Date: Fri, 23 Dec 2022 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671831087
