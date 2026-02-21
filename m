Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F139B2F28EA
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771697094; cv=none; b=uaAinqH4/GXFTSqY/a/yAydb2indU93RyA9IObce2I0X36y8Sd2st8MaKW7NZ7Oncyic9wfSq8y7BHM+wrA9blAIeYWuw9c7+8h8m77ZuWAHHr4QdYwwcCsAkGqhvDAFH2I3YCj8o/oaSJuvSrnPJUP2dNT0uZYjP9RKI3fr4zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771697094; c=relaxed/simple;
	bh=OSmq2Qfs8yvvkvk6hamno0z2Zc+ZDJiv6qtBGEgOmUU=;
	h=To:Subject:From:Message-Id:Date; b=onr30vR9L52fMU+jR6DFIqh3ziE8eDb5eF9SwhAYKIxNVwRjm7Y9DRe8KCeXVJJgP4gejJNiELLTko73CS+HhjEsLQUE82IXuYmR09jigxTVpeV5YLgkal/ywo0nElrTTJjwkyMPFU+tgYn5H+CxkmCxY1BficBrtFA2nOt9/h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGmi67LR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGmi67LR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36FDC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771697093;
	bh=OSmq2Qfs8yvvkvk6hamno0z2Zc+ZDJiv6qtBGEgOmUU=;
	h=To:Subject:From:Date:From;
	b=sGmi67LRcHJA+asEDWLMbHDX25GJz+jWOk7UDjJHQuIigfTD8P6Z0/BzPnRWQnXKm
	 0nfByyK0I2guQ8syz5m265FkJWsYxjIchD+n3dh2PAiAV+hej7mOmjCr59LHYVhViX
	 0jWnTftCNYfQ+Dfrj70u0ON515u6BzRSZ9uSdtONxXWYlf9Xgk+s9BFJ12sNlmNTiu
	 KyAynwyE7VJ3L3HZGYMoikuM6m2FdYWc/oZICk2f01AL+jyTZyM+1NZMDgwJZI0ngU
	 McZGfsKoYv7r2dtayusCoY7jchjUIXOXFXhkm2CKG01JRyNLL5uaMKL6N3QZSCG+1U
	 gA7GWY6WY9ZtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93058C61DFB
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177169709359.3171.15228020395674764691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a5e16b8f3cf37668bfb9c55263a8bc58d8e0c1a99958e853761aec4731d441
Date: Sat, 21 Feb 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771697093
