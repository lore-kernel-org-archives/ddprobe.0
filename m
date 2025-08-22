Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0048430F533
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755874194; cv=none; b=quaD1R1ArAX0rehLnhQk+TnVNHPeFMghVZZDDA3GreG8puGt6lxs9Lw1m+vuUhXMZR2A8xMMkCINitJaSSmCDWeyHCi7Y1CX7MqIG1wb1ul5QLTQuRsMtlHDKvLS6vhxyAd3KttI2AhzkoAvM8GsNVN51zifmjZQxfGY4o0PmkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755874194; c=relaxed/simple;
	bh=EMq/ELvgK1UGF4+tvXLWWPCtLZztZO9CDQHDC1x4090=;
	h=To:Subject:From:Message-Id:Date; b=UkarzU4ts1NJ3fSvgBTFShTqbAobkIallRFyk6Os5Aqsdjg4oxvEqLvl8UaTSWZTFRE+Ufj9AcW+x4fxLh2vjKSIk7/p2fT2nzgu75g5Lo/rl/KpiH8B7rI1+ByZoOy75VuPXPCDlQydzqOt5CKme0iE/pDlbjj45ZFLbJ315gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INf94a+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INf94a+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7CFC116B1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755874193;
	bh=EMq/ELvgK1UGF4+tvXLWWPCtLZztZO9CDQHDC1x4090=;
	h=To:Subject:From:Date:From;
	b=INf94a+5+B1tF/JEgK2cmFKrRuNYYtjpg+Ua97MzYuNzS3xKQ0PbpiDfG2qM561c1
	 2LftCsz5QJaDwbZRLhXwNBTJ5DMGojgbw814ZFoCBL+Xpa1B5R/Wch5Ag5yr0jzXyo
	 WyNpMqmxl6maZmb55qpF6Eh0Y+/hTvAE5bZqTL7Aj9TdhpkptEDUlA3kR4CUK/UqUH
	 FT1J5wmnVbDT0uX9GzBRE70GLLHg0BEBGCm9dO1kQm5PHtEnO3r4GI9hHkUVnyp/bT
	 2opblWWz0A81BIJRKhk4HKnx5zyxdoMAfL3zO5w0toja3FnD7DoXLgQKtxiTwVusA0
	 FtuOoUk/ZPtjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3A2CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175587419357.31626.5810448059852569489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 811ed87aea656de24770d984b24158c631758f1810e5aa49f887083a62a15eb3
Date: Fri, 22 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755874193
