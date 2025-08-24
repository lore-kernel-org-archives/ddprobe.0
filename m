Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2539D72602
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756019394; cv=none; b=uNVWFp8xy375v6E7HjrMCMwb4c5qEBDF/AwxzUrthAR9XPADbiwidmaD5DgsgFhSGj4SEBqj2HOpiJ+Z5qnLLH6DmBIYxXDrswATezcuztzEBAmx0ea+h6cw0twD9bWyV9TMod/SQ06LtgmcQeyrXz/zKqCMvyUKQY1kTd4ns/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756019394; c=relaxed/simple;
	bh=xXGSB4m6nI0DvAtGvtfM5jk6OnL8j+JXLu4m6qp09pw=;
	h=To:Subject:From:Message-Id:Date; b=WAwNSQBf7SSaxvOuuwNc2xeMR4kM7mPmx9EFW8ijMiY2UELJeL3V9XfBxXmJZxFrLdpnz0dTtiwKXHl2U4pvZSBf3YAmU4gzWFpeAw418wBSOxICKGfHR+i5AtcfRLHsdpAMvniRPXhz8txdRlSwLZc4I7kABq0IDY7j51J6mGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmDeSbLz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmDeSbLz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A43C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756019393;
	bh=xXGSB4m6nI0DvAtGvtfM5jk6OnL8j+JXLu4m6qp09pw=;
	h=To:Subject:From:Date:From;
	b=HmDeSbLziGz4Nq01xPZ19xkM4La8NmD4AqeJ09V+hZhlqkxXzdM0dAVeG7Yn6D8mS
	 wDhUyyD2mGE6vzNyZWKLZ0JbxXmw697xpcegLPwe187jt+N+3zk6lSGw8bMsBn8dT/
	 HjjZhTZIhU41/MNZa+Zl9iY1eMnpIBWedbLZVikSxGNuZULVXVacXEXkiywwN1rYcF
	 0+jwlBkl622q8nyzUjftE9laDaE8rSBMc6v1YxF6NanaGRGt28mgMnXTwF+e3wdtR0
	 jgBQJu8ZZIDbMNvX0cx70pbGTF/t0S+Sgy+GwL/BfmOyJM1rnKh0gS2LKWR6iOiy4D
	 NQkq+Dnujv9NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9196BCA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175601939357.24211.12122338456329741251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edaa0aa900c6995ff087dc3491138b8b9b83b444679df1a11a58c28ab883c22b
Date: Sun, 24 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756019393
