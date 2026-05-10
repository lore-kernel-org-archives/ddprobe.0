Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4533D4964F
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 12:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778415634; cv=none; b=IvK1Ucb+QSbX0wGN+6Bb84Gaq8YdpSn19carOOsXgvaqEmI6iS4y0qUVtVZ+P5Bmqw/Z7BuVKjMSml3dpMsqzWotsp4ae0fMmw3Zyc6rZ3K6vwwQpDVPR4LaFmdjcEBJNs//3j8APVS8/FuWUet+WT3v5HeMQtWrwingQmNcWMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778415634; c=relaxed/simple;
	bh=z9kRqthTWb8XjvuSNjbHvGq0pEgeftpEqazAJtyv8gU=;
	h=To:Subject:From:Message-Id:Date; b=s0m/EBzV/PNS4/C1c9g7XQOSeQ5dGB3VarTWs+LK7S2H6B7Msvx+pbefj0dQ9y6+Chua2LO5f/n/OAvADjTNHENHWJ9FvI+gp3rOlpHIlYO9cFqu9K2145kISJ9IWR/GUGyfwJtupHGP95cunZtziRJFLdh8s+3VkzFhsctkBvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrxlX/JM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrxlX/JM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35B1C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778415633;
	bh=z9kRqthTWb8XjvuSNjbHvGq0pEgeftpEqazAJtyv8gU=;
	h=To:Subject:From:Date:From;
	b=rrxlX/JMDyrsjyrekSNyCy2eGWcG4Afgye98tpd1GOU581hRIiwRLNye466QwV1VH
	 66cKf3aYE51X79wJEBPu9Z3IckD+yVBa+FDAlsGVb2XyurzEYPhPKlKIogeWj6ZhQZ
	 MtbTwYRpM2q/8N67l9TE2RjBX1tQrv6ExbDWtqhD9mdI6v/GYs5j480zwNnKqhUiNS
	 7Zt0GJvmNeZpNOPlTuAhoizZSoXedqZu05u3KNVhy9ZS2yrpZYQZIZldnEW2AiBirm
	 AAwGrcQihmckcP8ikKWHJemn8MTfXUqW9ntyL1ILhCU3L9JowwWcmyN6pGjSRwv/yF
	 U7mvCNzyDXE3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1C2CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177841563368.1386.12682085017348075551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a90655edfd8ee7811bd76cb8429e0234c65955f3f2bdf20f247690037882ed
Date: Sun, 10 May 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778415633
