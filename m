Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1B730C150
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 06:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779949954; cv=none; b=nM04PC4s/LMWGTVS6yuavda/TGP4LONC497F+WXT38Ck2+l+D2HC1m4aWtesZ5MjZAyoHGebDjR0DnFJMMc3IM1TzbQn2fwGLOjtAT+yZxTBgtQ6TUhc3ypytYsRum0aauFqBD0LSBHBEz9SQGFnanYEUPMqqUgz7o80nLRpBao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779949954; c=relaxed/simple;
	bh=GVwfzLP14RZmugQodKWLx2uNXvoyV4EvW25k7R2YvKk=;
	h=To:Subject:From:Message-Id:Date; b=eYVZOkC8dp2Jn6NGAbrnFDXneZH69xkD1U+E9wzGFnzuVEJQNxKtkY7hhVb7OumXlkoR28m6Bl+0NDd6EGs7NwC+pvXCM+tIh9mZ51STUzFu9yPYScHjmoWzqob93I3K1mb7fxldepeKCKCot7OZq6TbCDRSpQouuVJXetMP6vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXL1w5hl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXL1w5hl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6EEFC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 06:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779949953;
	bh=GVwfzLP14RZmugQodKWLx2uNXvoyV4EvW25k7R2YvKk=;
	h=To:Subject:From:Date:From;
	b=mXL1w5hl1vmKP83iH/I2V3e3v2y/c5TMqUEo0L7mFLt76z6r7Gl/1AzTlZ7C3DLUS
	 AvT80FCUMcJ18oAaokU3fgaeTxyS+tPf3SqBMzhYM5OI5kPzH6lZX1o3fnzHIlS8+U
	 poHWGFRW8Pur/APD2MzcfFVWGYSAAQN5UYQDzYIYVpzDQrfsDLf6U+Z/infSI+FTh0
	 PkuGDE0gWwYwWtTuLMyGjEuBnBwdGv7sV0nrucv2VpLvkEFGStgnDrv+S9kM/QQQRU
	 a9j646YmKurH0xtRPiGM8UXuyyaqsazqnkeL0GNpFNQdrlLK66opaXNhdhENp6eVbu
	 jojY7L0Rlm+/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE178CD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 06:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177994995368.20450.10567915348297187647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 474d921cc6c8284391c88bdc14b8fe52bf633db767b5ec35b5befd98fdc2e55c
Date: Thu, 28 May 2026 06:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779949953
