Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1778736DA16
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774046694; cv=none; b=HwanRf6Qwr4F9ROkq0VCi2shwzSjQGpRC9ogS4p7mqrQ2kzTdRX7xdAxEdYqkQOmKq9FrCu/DG4LOxro7OlG0Jt7HwcpFX8zn2c7EBMROGg4eRJngOQWqX6i9S7QgiLgAqMyE5TUKd6kih7KpC02pSPCqu53NDls39XHF8sFf94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774046694; c=relaxed/simple;
	bh=IP1wOzVcztkXRyKA24q9MmVPgmWnK1M4401a2T5W3h8=;
	h=To:Subject:From:Message-Id:Date; b=kqG51+XvM9RW4AEYmf+1mg1Y4+JfIOPJUr6z2ILUFx6RQlNxuX2GsXIdy1Rl1dMN8r5P4eBvWi3mnDrCAhQigGmZmJP3alimusRd8covATSb8UcPtosIayZ3Fxk/HBAVe20RIUK8798ZPw8Rh6OINxROs3lMGLazOj5K+2V3xJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBXreq/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBXreq/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A138CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774046693;
	bh=IP1wOzVcztkXRyKA24q9MmVPgmWnK1M4401a2T5W3h8=;
	h=To:Subject:From:Date:From;
	b=ZBXreq/jcFwX9fP+R36Z0HhnNOEJ44hOJ8Sb5nT2HsfzTDvJ0/ZG3EE3PbKrP6fxC
	 MC8neoyGc2IdWW6tk+bKHS//iYnEHVz4InGDkG9QorwBdryZgN6RssdZ7DqGJ9QWuH
	 Y9XVTaKp8IKCarL4Cm2S0slBnOwiA9oR+qiD71oWEG8eJh2HH4JwP1CjDGid8DahGy
	 VVukOW5Tv+bGjVGtbRErqS0Hz5SwgisbB+i7ccYG6qTYZ9EziOZnxIMs544mqs/JRn
	 TuaXCCVLd5mBUuS+ajkN9L+7FmnFdCfaP//zfPR0q76UzZ0pwZ7mLKTXqW34n7j2/E
	 /zLERHJsiihMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C1D1099B4C
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177404669357.3339.11137873732514260295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a956e937c483ef5da3eb31fc793c797ebfc0b9fd17381413d976320a23229b32
Date: Fri, 20 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774046693
