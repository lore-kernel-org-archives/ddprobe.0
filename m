Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF132F39
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 06:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELcuFUL4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C369BC433C7
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 06:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696833428;
	bh=qdy6N5TUWgy0zNWO6pYleUpaCiwo853HuRr9n4XCo0E=;
	h=To:Subject:From:Date:From;
	b=ELcuFUL4Mzw5UHzGSB1kVpvNL6z/zDmppSVjwgRzbJTxrU6FF6yW4YN3SHIwaT/lE
	 UPJfGlu18jP4nkd3KIO/CVqqr7mPoagOaFCtvO5S2UiYZUMg+Xh+wYILiY5QjjiKzp
	 UwOwFyVSEfSrbjwenhKTMnpnec64zjNB0G79Topem1Q93ghNWmVG5TjXx4gUMg109N
	 v5ZMIArcEMKVPLs6yCUaVZTt8EijoO2FMU+aGxkun2FKlBzCJQs1HohrnroaDOAiVo
	 CNOk4iFBEy3vYbiNM2LXYB/ULIDvj8Wtja5wSGcaslgjG9jIZfxxDepTQSgWsLMK+/
	 z6NsjL2t6QUAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91CCE95A8E
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 06:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169683342867.14424.13181692297592197835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47211b8bef5f3e9dc50a136b0f98e2fe43c9c5d6ae8127a7522ab10d8899f0a7
Date: Mon, 09 Oct 2023 06:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696833428
