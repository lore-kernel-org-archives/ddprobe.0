Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FEC392C48
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 07:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784012914; cv=none; b=DxKcVaS0hUFM0EHy9JWCagdx9PefC2p1SBiTB1SyVqnp7+enaI3XFDRhAbaLAAQwy3mT9jk++pqcn1n5SwDsESxq1mPrhcXkeGWtJTZ/GS8Rg+d9O5J6CtK6PUOYUD2k5jnb1APv6rK9V3Uyp/2BjXuft/bOIq1cVSgQR/aOE+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784012914; c=relaxed/simple;
	bh=s9gI330gEfsj8psHy6gLn2f+cEjRaYJEF17dJ9mRwCE=;
	h=To:Subject:From:Message-Id:Date; b=IZww3tVq+k4MImUrW+sAbq4fC9vyyNXfWosMw4zH4YIyUYCXIVroCBSkjzN+1knTS4xH/ur8dnrUgNTCV4cQZIoQJV2QXgoTk7e2vwLR5b8N6tkwazz8jcrQVd9355kf47MN67mbfuqS1pcC/tJikK4XDyNR93PAsB+n5K0smlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpTbuwzK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpTbuwzK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3625C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784012913;
	bh=s9gI330gEfsj8psHy6gLn2f+cEjRaYJEF17dJ9mRwCE=;
	h=To:Subject:From:Date:From;
	b=IpTbuwzKY48Lg4ip/j4iWRWc7WCWwHgnx3PMZoxiO7XvBviWCuEOM7eXj/xW4jlzo
	 LVvwHyR6inKWEQUeBQw+11U8CXnV2t1+6b8sqgxST+JGLQMdIJptbJXJR5sWJLCj3T
	 Rqs7bZnuO3wvVWeCO7npejtSOiTzc5nBOGYdPjeagBdgrmNgrHVvccclR0PwXVCmKJ
	 UOAkyrp1DbdWyUkK1HMM40tKiiw5HZACYUM/tn9AR9nM9PiSaZYtaYKfMp7Lsy+7ZQ
	 oMZ+WPrjh6g78yeei/f9NpvOds9NAvcI9WJz9K/o/HmmYiVXy6TXU+8m2kfcORCYQi
	 657kQYHdTTzrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF13CC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178401291370.21412.16622565923409753171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b7a5b061cc26c270dbd54869db1652831303f96ae9874e759403bf46acecb25
Date: Tue, 14 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784012913
