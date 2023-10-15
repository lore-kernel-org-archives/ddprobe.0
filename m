Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E87E110A
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 03:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L27Lz/c0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1070C433C7
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 03:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697339228;
	bh=AaVjAEcIXOuOaiaOoBX8ez2Us3Ipic9aoX+oEcVIbiI=;
	h=To:Subject:From:Date:From;
	b=L27Lz/c0nto0K8cKiXSCQNQZdNtGi3br+a9vT0GRnu0lW+6H4CXGjyuY3h+iE75GP
	 ax87ijnDfefhuSGotMSUy+1ggtWUk7ItXWKZx6aj+oYieNB+m5haYQZ2gS58/QR3If
	 5XXe1IAzpDDee9U8p8+rzKXu0xTOsqTFdleLZw7vyjat9MvXaK52ec54PeQ4yEyTBI
	 L+Fo+EloiPlm/vVJB9Fu/6OyG74Df4uNQLuFX2Ldr4KZrSGOytOODihtZyYNTVM+lH
	 4NYiowPrqbXqpNYda0XkPsKMFnmu+XH0blq+jCPiUD8kecBRg6eixkqbSv2u7p1g/a
	 YnkcmuzvcaWfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F1CCDB465
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 03:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169733922866.16376.10977538193529402581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b009553e04a6ee046344228b473eb12d752cffaa116976df7694bbf40c222524
Date: Sun, 15 Oct 2023 03:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697339228
