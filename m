Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9751CD0C
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747958994; cv=none; b=EaJ+QtktNy2O5XHyUW0EsQbnpKZ9ueGcZjkAuRdzzaDhC5Yu507s0xnGUbizPFbZtO05touZsiZFVikm7+O62z7QbWzYHPxHQncECB0ZMNzWOia1ztuXr5rA1PFV8qx3PAgN0yZvGg/oVZE4veoochLWIVh6wTEbgf+PFxdDltA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747958994; c=relaxed/simple;
	bh=p4B2kVrXTJOo8udHuYT6JxuJJyfaP48WhurGB5uKvH0=;
	h=To:Subject:From:Message-Id:Date; b=DM1NowvrxokQLGtGZQtMNgVnY0AboUjH2X5LduJSLKzEXc5fyzMfnkyih6QNOo5aFChduYEx21bWoRodG01T3+X2T8F5Tz6Amj5xnS9lyC6a84MSNaHVK77txAUmMkqNH4Vra9A3JbCHC1QBSXAMe5CTSb1nK3W9py4C+t9cTGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPpOB8qi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPpOB8qi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BF8C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747958993;
	bh=p4B2kVrXTJOo8udHuYT6JxuJJyfaP48WhurGB5uKvH0=;
	h=To:Subject:From:Date:From;
	b=IPpOB8qiypExEPFgQzKEEUyvxsQGFT8DJ2ptJCQKEplLZqMRZZ1aSTQ6vVPKM4kRN
	 20/XMiu+DmDY3IcgqHx864Fs2aohfpJig5m3jI1538k3w/a+XTG0RYxo4bphgEZ7YM
	 4FXSCE5AnktmDiT9FT8AftLwoR4Xf9KOQ2ikGKe9rBKzUMuj2z+hsHMX1qxfxGXlmW
	 26OWQt8Pxkqk1wjdAFGMVi0Gd+QexWvvpfsUCgyi2Q4njVAo2Mh0y391hevYWe8gba
	 zNyZkUUhbF8gjxH8a8zGhbixwljbAGSywxyESB3OWHmGHSinoH0hfGXjFiWF5+Hf2v
	 unziSNW8mZltQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD6C54E65
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174795899358.13860.5798593906320932915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3acf5e1d652512e2eb7dc024604d1053b26a18c0c44bf5250a5bdcce795e04c
Date: Fri, 23 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747958993
