Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF1A153814
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728202554; cv=none; b=K/VDhUeNHJQS113euKOJwM/YUhCMC9DuW8qLWBrr8CsckjVtIHNK3kPlQORS8/bav8YWxmvDiSaCoLDcWFbaD9xmdKXHaMVxvGsc3QFqWCB9T9tcfwQTV6/CX6CP1e1B4xUgGOlKbUI7MtNNLMd+J7VCGruIbq3Xx9m1oM+SKcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728202554; c=relaxed/simple;
	bh=Dn0PgE4ZD6sSyiiCYtYe9iKvFIDan7odygTfuI52rQg=;
	h=To:Subject:From:Message-Id:Date; b=n2nVJyWam85kGdA3g4NCt6B6fm16cUGAJmgwWo/m4HagIeq3Z5m7tfb+HLIMX9CScwvBnr7cw9hWjPzNBLvIvdews1kDxq8Gt/wTndTIUhQ9F6+U/7TmRoCmHXEfEn8NgYvT4Y6FEqryzNKQSjKzpkn74i++FW29Kz9HTKaByS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tC7C4Q4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tC7C4Q4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4446C4CECE
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728202553;
	bh=Dn0PgE4ZD6sSyiiCYtYe9iKvFIDan7odygTfuI52rQg=;
	h=To:Subject:From:Date:From;
	b=tC7C4Q4mjjpxPxzZalv6LMoknF2Nw+InR3B+pUsZe1JtAcBBKsFspvC98ZWUNud39
	 hpFg3js9ZMwx2c9s53LmMBCnpPbjE6hlylcIreZuPrmM6yoLDQY5qN1f4B3/f3hXcb
	 BkDMNms8UT4e+JJTPq3IbJzEm5tYZbyXMALQx6Epr2sPRQaEdWrTl4brOROnSo7DFo
	 MU1ZpxJrDuP6erEXzWctfkJr1gU/2/pI6hMO1G9MG+29g7V2/wHv0ggZHWBfP9glpJ
	 VvXMQwdatsC/yaMH1adAyW2U7LG74iXNC0CrSmyJSmzBH5/OqsJYC1ITcoOQIC/uuo
	 EYo+yNel7Fz1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92248CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172820255358.879.3187211709518469251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 108af7ae7eacd696b7752a262097dec492cf0906c0833ae5a406f2d18f8167f9
Date: Sun, 06 Oct 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728202553
