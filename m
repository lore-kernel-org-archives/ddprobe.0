Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6596A130E39
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 12:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715256743; cv=none; b=dm/aPQqU6uPS0tM+U4LyhZGU1cXkNVyqM9Yv7d1yc3Nfbb8kJtDceYxTedko+qGnDwF8/3xvz93aBrazDQ5r/dkDAHIZZwtt+k9ZvFylPcTndGRY+tlQwF8oBs5beM48y/sE0Pk2CktzEsG9zE/C6DHEZc+Ca2kx2KsRZPmNwk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715256743; c=relaxed/simple;
	bh=Cr9KZCVVg14/1a8g1X5jxM8+qyrhrBg7PDyorPsWrZY=;
	h=To:Subject:From:Message-Id:Date; b=kAlxEc7qq1Gf8DUvm6Kr2CgT77/CZMVV9ZQjim9w1tfQgGD9r/Whz2NOBB7/XJ7zZeGMGg3EY37f7gDKvgTiW7T5htZv4Iv2+rDRUe6bHAUCdiFcgi2ZoFSh0AVkGAQIKXRv5c0CuoQ3PVgDKUWtvHdbXR0ENlOQN1mJPciBbrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=quJj9u//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="quJj9u//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E22DCC116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 12:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715256742;
	bh=Cr9KZCVVg14/1a8g1X5jxM8+qyrhrBg7PDyorPsWrZY=;
	h=To:Subject:From:Date:From;
	b=quJj9u//D7RP1vu28aui2bzXS7TtfxTaUhvZaZcXrODhVgT4PFCE2mA9oTgvco2dq
	 Fj5EDyF60xxOuJxZX8V0qVB28UQ48M+XVV8zCASdH4FxjQQX9wKk3sBH3p12QPPJEe
	 P/k13wzRo/XzOPxNZpDsf/W6ALSPKXVMBn0DQrn1l5AA+S95Bm5uqxaWMwgTEzu9gT
	 wz+1PKPx96tU43zj7fE6Awpl6fQIIpOneUPPraokC6AO9rPDPcCHKBW9GdtCGFDrLQ
	 y7twwSZtEiJZHJbAUk7WdtFKk0oq5KYwWUij1YdrHFY2mtujZ0BsHBdsBNic3fg+J7
	 PRf5LpTTCSeZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5CB7C41513
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 12:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171525674278.21577.3125293818626616767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1ac0ba941bf19ac2278388717c99738119dc90d5d2fe828e2692f142ad1b9cf
Date: Thu, 09 May 2024 12:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715256742
