Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D23940DFA1
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773473694; cv=none; b=lVX+N6m3ubi5e0JZe34rpMNM4N10KGPsZnp7fS6jIyIN2dbHPFLf4x2D/L4eYR9Ia7LsiEGUCM6fqJKwcQ5q7KlH5rMYckv3A0dZIqDdtONNHk4VbBe5ocwR9vsAxy+C2dQCVOc5y9FH1NPMmS5mqBp70vA8ET+HeTzA5xcpQuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773473694; c=relaxed/simple;
	bh=P2t/eSbLN9Jbtkgr8TLro0CoAyKMUP2VsgU4E1w7VH8=;
	h=To:Subject:From:Message-Id:Date; b=kqftb0YroKKYeINyBRRibn7OZc9fR0U5wx31cNobJi6Ya25A/r5QTWURmeMS7l4yrnTBJcApPfNnQHr9CBtwLjQE43+PN6H6/hxYaAk+B2/2PA8+Nts88Rk1ntcpbkd+5vZd/cjoIR/pJ+GLKG6TmJfotr0ZwQd0JW+hG75ZD2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUJcYu3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUJcYu3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F86C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773473693;
	bh=P2t/eSbLN9Jbtkgr8TLro0CoAyKMUP2VsgU4E1w7VH8=;
	h=To:Subject:From:Date:From;
	b=OUJcYu3wNt/pG581xZVbV0lSfAmuZolbEU6WPmh5UqSILhZ2xO3d+S/GDvOfn0aso
	 wvvawcTrK3yeIYyHCrnFSfHC5E734ftolUt+0itf0WQiH1pT6nWie+yJ6tq9NKCjJR
	 4cD2LV9GEN45/vOzBGlkEnLelBQnBLfbnEt3jTwY5v9FdGM/uh7cbm7XZzfEfKI1VM
	 bJ7fs9jf6N6bFCDT9oFgQ0Jc2xHHzdtOgrhTbcDbxQYq1gNw4J88IfihuU3J1n2lus
	 3b9YLgAePl6hChCXTBR6/6G0E8EOmt9cZoodUKiRAd5DCPUdlP4bG2eoGL0oouqqcf
	 6+l3xv9DxDMFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92469107BCFE
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177347369358.17230.14350059850820611063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d419047f299cafc636f24eb02297804c4d0740c5e88954ac60d100959ea3684
Date: Sat, 14 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773473693
