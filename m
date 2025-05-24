Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDB21C27
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748127594; cv=none; b=GPrxxCOViNP1REP2ObA07419105BiPXjX+w6BCfipyeJbYTQO5QdmjAW/gmf/NccVq7SwDWEeaUd0kkjbcibBGbIBHd/rPJOBHyE6oH1Ps25paM8os//v/0nAxdD24tLaDADCLpUVstnyFvEXazg01NudfA+i3WC/tVqelpbqEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748127594; c=relaxed/simple;
	bh=r5ZZiSROLo6r9Uq9EdbGOGx9qpDlj0/zyJLQc4VbUQY=;
	h=To:Subject:From:Message-Id:Date; b=NzQdRBnMt4wnnb+EaqWap236VavyRj1tQRgWUohtBtlmZMalaEUle3lCj4bHi0IELJx2ixloRl7V66MGV7z1m36oFtniXvL2q7mGpBDYmwaD1EmhnA0vNPn708Ag9Ou6Myr3gtbhl1mhuC7x4jh4LNhvYLDRAhVStWOBcY+kELY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFRi/uwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFRi/uwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C31C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748127593;
	bh=r5ZZiSROLo6r9Uq9EdbGOGx9qpDlj0/zyJLQc4VbUQY=;
	h=To:Subject:From:Date:From;
	b=iFRi/uwiuBZb5aIlm5WqWm+tWOPRYQJwLr2/jqYkLXGH3h1Lj+5NvC/56r25ojyz9
	 Pl1Bw8vh1gAQCz+ffwMm4fIxoEySqbwLskNSeOH05C1QLWs5AG3lJqXjqQ4nUX77n8
	 QLBq/jw+7HLMeyYo0ccfQaXPmOt8RAM0dC34pW1zrIBWLgwu5MKokE4oJLZkgZmYlj
	 hlQ1ekg+jYprUbPag8+g4gvfGDCU5KzNw5U8QFZD5TWflPOqV8woipZLV1+p8pUn70
	 0afI2/c/ZT/epYXMmHOmOc2tlvQAqqL78gQ4YhduYinscs+RTT0XZp+yU5aXeDbmmL
	 pz2tsFQBiN59w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FE7C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174812759357.4232.185481660365565703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c4cf2fcbfdb6e7f8df06c5645c06aedcd71a59d4d50a5ad2ecffdac31e8ea3f
Date: Sat, 24 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748127593
