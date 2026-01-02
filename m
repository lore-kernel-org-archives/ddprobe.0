Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD042DCBFD
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767351834; cv=none; b=Sjf9L827fZQ+WG5/MWqXwLWCAY8t5rZqJd07HxoGAfY6TgSUQ3Lo3n/WkQKOklt03D/FCkRUf+yyRk7np5rNhwcpJ5mLvj0Xb8qsXOuo09fyy0lQ4X/RLLSRuxAg1S1AV+8Sch3hMpmRmy2c+ndbiDx4LHOWl6JuPy71+vuqigw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767351834; c=relaxed/simple;
	bh=Nq6ILWarjn1MT3/NQkZWsm/xnpVC+sHTJpCsUwr3duc=;
	h=To:Subject:From:Message-Id:Date; b=iHvjLBxpACPzPQfMDU08czqZq4uhAugttoBRnvRj1s9fMiwhrsTQbXtK0x5AU6xNL4WPqSZ8M5QXEZLIv3bNjU4ukCtkzhXhZu1yuJth4tfxy9WI1e7/OJHLWMnyl8tQLe8Sx3n6eOXl5G4ralksa5tcB/KGeV/ud8tDTvgYRL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9/yaYjg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9/yaYjg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFD4C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767351833;
	bh=Nq6ILWarjn1MT3/NQkZWsm/xnpVC+sHTJpCsUwr3duc=;
	h=To:Subject:From:Date:From;
	b=k9/yaYjgmmttVnIHmXqcOCgihnt3z6rC6P2Uh9ppCoeLuDfRoLZUkNXQWwg9/2cIc
	 57NUtcFTxFVsGyV9Hs6xxfPCwMe7FZ45EjyrkkMHWHW1by7f0mglEtLZqIFkb1NJ1U
	 3gfwTcYoLhnPMh1PIlcKaW6C/Jhg/9G60b7pIuieWWtfu15Db8T8hofKY0IZ6xGM2k
	 Up0Fc+5RsjipmVu2c3E+VZe9VtSteP4yj9sWpPtVFPzfU34tWlzBRKJdpPiTcXYAfV
	 H4XVf3E8ZpJBzxGSGf6JU9pCJ0FZKlmG+ZNgfRoMkg1SmEj91EL+K1OMXqya6HjtKF
	 xhvpuJK9mgUTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3BAE9410B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176735183357.22840.10692947922071869622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ea920f9e9de5e5d758c679f116c0dc73be78e82858e048079c810edd6ab9067
Date: Fri, 02 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767351833
