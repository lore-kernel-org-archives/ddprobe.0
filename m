Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7331FCFD4
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 11:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741952334; cv=none; b=InklMp2LjYBFKscyYlh2F2wnEGwxZ250rWNpeVPfnxMkST0t6xI/DEiQG9BBtZxfN6Ra/AkdvfVefnOV02IKfV2ZJBemKf5XHdFfO6RRWFdIyASeNHoj+xN1KBhCAHtjFn84OKof7KaZwIdVLKQ1KsfwhwcZSqJuPcTREpjCzJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741952334; c=relaxed/simple;
	bh=JaR3wG63LIlAZkhdTVoVv+1LBwJis+01ch/nelbqLSA=;
	h=To:Subject:From:Message-Id:Date; b=X4u6TiGZsnNinZUrtmUbDTjQp4pgPLoaxxGdmreSvI3VZzpvF8qEPapocROG7cM+WdP5QhI8j4z4dPVNzbsnKaeeeFTiZNckZu7QdumnEyweO6X//rvLo6ZjHj4gR4zSI+2VQw5DWBWaCEcBLUH4JTaoOYG9QbxtrcviVu0bjqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=goRoNYKb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="goRoNYKb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5DAC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 11:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741952333;
	bh=JaR3wG63LIlAZkhdTVoVv+1LBwJis+01ch/nelbqLSA=;
	h=To:Subject:From:Date:From;
	b=goRoNYKbGNXj1EMbbMNAifUaI3dcwLCOcmcVoQEMGz9DC75oQ9xBDy4nNCe1qre+B
	 e14sZCvfRWUgJy7EOzMltg7P5yBLyAPnXc9Z/rP1JzBsEbjnuCCBPXhOUm+6XcYYYn
	 65zX6YHGACDYBW9Sb6PY3ydHB/VjzUEmElDjXO9kIoTtmZXc4KYy1hBWrk2eDsNzaX
	 BelPRPXe6XjyiS+5L7MBCUSUEjHO+Z5unZ3pvRGoUn5QrOM/3KyyeT6RVgiksmciKp
	 2arorMWLPM3gJSCJPrKDGe9ew+JBPFUyluJnAxChjKwIrT+iMatgTvEmlfC/YYpnpx
	 LyfV9zMmLPiZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9C3C28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 11:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174195233368.3978.3832726894181446528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b58b1cfb981fa2788977a933db4498950776fa6bddd6d19ea10c80dcddecba
Date: Fri, 14 Mar 2025 11:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741952333
