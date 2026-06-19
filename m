Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047913783B0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 10:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781865994; cv=none; b=JrlgtKUSulIAdKv2XEYhgjX36YO7hCrZrg8qA2aUc8OnxhRKf8MBw4b0GQOrJMUHJuVnOJEjBSD5njvHWD/46Hg4psjOJzvQFBnDe/jnh64PfAvhqMcOLrMUD7Lby5/TvI9LFidln0oejw0qDPUgOh9Bn/1LswKBKZRilpJb+t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781865994; c=relaxed/simple;
	bh=Mhd2hj55HwsFdLZnyM2pb1M66HAWtmmWJdXtoSnOOqo=;
	h=To:Subject:From:Message-Id:Date; b=HjcqEZy4lE+KWeCj8NbwWiYpXWgtj1bE8QePBexqTdLuCs4/L0AmKJJkQLzzPaU5Lr1bOMpfHeCsYb6SEeL+65KwxL/hm/Acgh8ikTqZCDR4LnTJyAwXVUHWyL04XX09nR7tOhCPCF8EorjDKVWNz3FfwrCfxTbzab11BTJUIV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9njcg1V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9njcg1V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10B6C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 10:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781865993;
	bh=Mhd2hj55HwsFdLZnyM2pb1M66HAWtmmWJdXtoSnOOqo=;
	h=To:Subject:From:Date:From;
	b=s9njcg1VlNk9n7P5Bw5NN5h8kkDW2zMu4YSLnRpa+8OkTdZbfKMAyTNPlVv/yVZfR
	 9J5S7KyvXEEusGlBYYrKDXLE3CjxbYfOax7qLdq+9kBurXVifRBoOa6uGYTJNCEdlU
	 RQ0zWEXd/obgelDDpjutUwNjnRQx4NvhHa4J4aATS8wDWvIlFfgM+EC28Zfh4jjAHo
	 J1JS5L9HOBgrz4z0Y5JnWzfpctyCwCO+cCNHklbPJi9LV1qOk+LOvP2Jqi328851oG
	 ICOcq2xrpsM1eVncSFLFCcDrq2xWsOHf2cyDT0zV1aOclk8j/TpxdNvv6zAdhH0tzx
	 fve99hmpKy7IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02EFCD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 10:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178186599368.4128.10337304993005994706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6af0b4f28980ba7006fc84dc03a9dbc384264e40008df630862418ef08020095
Date: Fri, 19 Jun 2026 10:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781865993
