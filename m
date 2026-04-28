Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2943447CC8B
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777402654; cv=none; b=KBWdp9VhZZxKvBFGGTd5nEG0S8o/FtfKAiURnZpQNprqKdI70rwQxw9scaUrd7b3brnmE/Lv7PSV4BCI2JjnqWrIRPMsXomCN9cv3T3HTc/7xWe0gm/jF7AZFAJ3nmUDRDMC53M+Gp2WHSbfRmA+eA00fz9NW8ftQbcxkAh4y80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777402654; c=relaxed/simple;
	bh=cqcSjZuaw1eWktuu6B/6wL8RL/e0QczQIErDq9vQG8o=;
	h=To:Subject:From:Message-Id:Date; b=PlCgHNNbUM2dA1eXSqwcQikBEyfIJDHEJQegBnRRuTKdKlzt4DqfgSopvQEeNUhYdyEt1bl0RDLjYVGotlxKfaFQCIw0mNaTlS00qsPLqGjoJeS3DUonTRnykooab3IFvnLMxmw77PkWlwSewXJm6V9qAm+Vd97bGrubnqDv8z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JR1mjcHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JR1mjcHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7656C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777402653;
	bh=cqcSjZuaw1eWktuu6B/6wL8RL/e0QczQIErDq9vQG8o=;
	h=To:Subject:From:Date:From;
	b=JR1mjcHVB/uRKDYOrgJI/5KyGWnoOR/Au/Dsad/UifCenG9qXM14+Rqu8rjwKjtkz
	 z+HTOsgZqpD7CQGENpqujUotPIwxP3TtcMmKzEL259Si+WxmoBn1iEjPtID+ebzcgy
	 Lz9AZ7O8iq6ksGvphvzGEJIGu4z/XwAn2q8Y7PUDyDENSIbOQ06GsdVXCbEOLdRKTl
	 coWrJ2yHwGb4LPYgxHlG6ve/h1eGMCv8FrVdNpDCSsqvl5FKXmw+0C7xUlbfWu1iZZ
	 mHOPrDthDykqaLOOJsrm+Qc4TPafGG7TPK1Jr9Hll4a74kn0ahB3TT4loYRhP/l9Sb
	 JvuKay8J5uvSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC4FF886D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177740265368.23037.5687609867754754170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d864cfc69bb0ae86453c5dca2489a5e0ce309f289bca081f0f8957295bafa8c2
Date: Tue, 28 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777402653
