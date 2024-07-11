Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B1D610A36
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 23:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720740443; cv=none; b=f34FACyY/dipOBlp5Q3auaiSaqOsY25iDSIjMPR4+xCTYm6dT1QnURicfWwRxVtP3C9zXhG2BUaDac4jsdi+zVNUj8bNGL0Uqrh05sCZ0/kLXpDHFqQPPMs2rW79bNUbDYyzzQ3NHRM6GJezUd8zisUuhmXlgxbCh2aMiZL0R7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720740443; c=relaxed/simple;
	bh=jKtnNfhY0flHA2vxkQs4ZdWDk5OzEJtv/sqAk3KhFyY=;
	h=To:Subject:From:Message-Id:Date; b=KiSEs6L2hnrF2u6Aakc9WCeNAeyV/g0Fp4TeY5DMKiUMNhmBHXp0/OLshSMrMAKsROTNPm8HZyjYMuB2vaBnYWebCcJ0/tmHLUHG07eQamhIiyvIhtiu9L5lB2Nw46EmaFGJ5w2U9x7qYCoz3EaMDxiFbj0wqcsC+XcctbcnXAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bry5ol52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bry5ol52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F407EC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 23:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720740443;
	bh=jKtnNfhY0flHA2vxkQs4ZdWDk5OzEJtv/sqAk3KhFyY=;
	h=To:Subject:From:Date:From;
	b=Bry5ol52JAc5CZu8oIu6Ay51aq+vX8Nro3jK6Pppyd9QwlKfjXymbpbT1bwBn5M5p
	 3pCw7eQl0uyDyvVeHumNCFmMsm3txn/wYphDnZbegQxoYjALMiecQ3VtUpJckccOsf
	 ow9IJwvetHNhpuMCmT0K2Q8WBBOYIUz+BufD9kVPxNs4ZTB6JVW9yif5yHojjPlNcJ
	 xoLc9PsW3u44MoChiSk6Ny0NKy9Xj6c4HXSDKKpP3Ys1JFi86x+n9pufY0cVUVFqfN
	 jKpq0UD1ppP7WYl1kdjDhGfPZg3ABzR3+YJZuBUjxa5WyfBWS3NSN8TmRU9Qal8yk6
	 dMv5ebsZF1SDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA4F2C3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 23:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172074044282.12704.10240623297179863851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef886b37432390c8a45e8bc6e938034a271668ba2cd7a910519038ce56b419d8
Date: Thu, 11 Jul 2024 23:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720740442
