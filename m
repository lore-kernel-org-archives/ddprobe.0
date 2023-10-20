Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3811EA66
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vh4ApYv4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9687CC433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697819896;
	bh=rwEFXj8mPDEXts+H/07cehlVhC/FPCmMNs6zYWGwGTs=;
	h=To:Subject:From:Date:From;
	b=Vh4ApYv4mb5eXR9Ahn1vbu1+5ZJ5Vfgy1jLgwlJicExIgtXytw1EI6Cg0rDjb59zA
	 XgXddLE28SBENqYLJ1S6H6oyExtHyYXWSqFd5P723Zkn4Nh0ousKF7kXmML2DyTkDz
	 idW99kckSHDN7cBhNgnHCczlk08AHUrHmD1mjWll1e9NKDMmW7CmdxUf4TPy/l1jch
	 1RMYrwKK6A2KRlPZ0WbRCmXI/QZKB7qHZ6yEtgLduqtLcExMaSlKFtWm7R9PeRmloB
	 nWR4S2dtU9cmqXI/VB6QMG2FFg9KUbpKepUl3VENOTfEpn8A7vZIzORTvkEEaexkw3
	 G/eCMnErTGQ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65A44C001DF
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169781989640.5758.10633602163821949288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbe6f039938422aff7f4e7bebd9fe525b764c5ad37a276f92165764fcbd534fe
Date: Fri, 20 Oct 2023 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697819896
