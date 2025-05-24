Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350C714A0B7
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748111394; cv=none; b=DtDB9peca2mtF6tXxs899ALKCFiRCjed3zLsUWAbLssxwJN7YVnwpV3Py6j62olP1cslMahUR82cmqnsZJfxAXMQU+izw/JiSIxT3retgsQ9zP8dsGLklt5tT5Ky8HVhMFnVeITwRTmbba7RAuaGnTNqeeuG1mlUaDtyB3BHwvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748111394; c=relaxed/simple;
	bh=9yl6kDs7zFnYvEbyvX96BR/WIEKPx6iet0ATuJCmPGE=;
	h=To:Subject:From:Message-Id:Date; b=VYs1cgqqPQy1D+tHEXC0LMi64bFPdns437LrQ79BHxUuU1wqa/oWMsHR93GkeIYjaPQEJ6Lxrl2DPfZEAW+DA5W3mKd6ZPnxdaNfwKayjJGlnPCTp+kDQ3Wtack2hZLZdhhg+V/k+G2mH/+ezz4uH56N+9cYipLIx5h1INJfxBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PLJTFw6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLJTFw6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ED9C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748111393;
	bh=9yl6kDs7zFnYvEbyvX96BR/WIEKPx6iet0ATuJCmPGE=;
	h=To:Subject:From:Date:From;
	b=PLJTFw6fcAcyzQRD1tan9iF/pLWJopMfxvPNLTyKKez51Sg5xdVXCNYVfGk8kSuvC
	 TWdSJjPd9AxzQNwSkEnIeuHvz2cNHu5reglTDmyR9LOgMre3XZcKfHkgrTuKEeFi2D
	 u/WpbaHp1lExPQ2zR3PiP5o/vZ+Wwi3VhT0uCv7pPVuPnHOIFsBuSFIDR+bAJGDj4o
	 9BztYskKLp70/BXA6t4OFT7jrGSLgPB7r2xxvXhMUKs8F0XnjNZsnsZDS93W1+0RZ6
	 nBbJPzvCN3NU/sj3ZU4Xecv/bpZjrGEjGLYL5B9vNs3JivBRbavYsTTcHiSVfJUXqs
	 H/JYqGFzBAueQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AAEC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174811139357.15353.7300440550484029137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb674107878ab79cbf6b5b255b6ea1b8c61cbccf34c853dd4fdccfc940d9f259
Date: Sat, 24 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748111393
