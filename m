Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9CB1DD9AC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745998793; cv=none; b=Fampz7V3BE2tMotKtYizruHKXBL34HQQIDE7WqIYAN1CaEhmUlE/C78SGnwlkgzntAdD+9nzT8X0Nd24Qjg6eS/XONUiHPRnmos1lSORA3DNzsN7B6fXI8tcgXmvSiFIs7N+VDcbfQeiU5ZZZNWhEBjkJ4OxNRNTteBlracficY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745998793; c=relaxed/simple;
	bh=L1vm0/hxa2IKG05Tj/vy8L0f3Kloxlygi/tNQTCxqok=;
	h=To:Subject:From:Message-Id:Date; b=Jtnz82Lv4P+pNALGhZxa3gtyjoF9u8nJSoQPJXOOmq0uOvZwiAJBfJ73om2AzdJVLnpdmqdKK6aCzmZAKVX4hWyYK2szlo9wc2msyB6Tt2oJzpPjMX9BJFYfPver4rRVpav5bZMJwFg1RcsLKLXHBFzoO5hM5dv6gJeVLu6LpmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQOvpiPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQOvpiPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF8AC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745998793;
	bh=L1vm0/hxa2IKG05Tj/vy8L0f3Kloxlygi/tNQTCxqok=;
	h=To:Subject:From:Date:From;
	b=OQOvpiPVM95GQ55mJcr6c1a3fbR0FFZvkHREKiW2scBE4Vm6VonAGuKMRNLfxVS94
	 UqMaTfm1LcTfCEq4x6sKfEj0mR/VshMFpbLKSBKi6VX/2t9EKL9K6t4kYyaz3F71eV
	 gW+KE3DkUzFB6FKQINcOd7Eaav3B0kxhVmMf4aEOSYxfGFEFCoaU3NfhI3ChpIQDX3
	 +rtcceEdI0zeqfoJFBfebgJNRP1r+m+HQRWMasDpMdw42lYEG6O6r6om7yI7Fz7fw1
	 eDjYxMwJ6EqqYjJlo/8yEhZc7H4A/DGrIGWKKlR73dku+3nZO2gyLPD91eUjSvNkyI
	 I4j+Ddwcc6rkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F13FC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174599879357.24026.6204451420708318715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7696b1b80a64031a773383523d160615eded0f6d98e05551c16dc030fad3b0b
Date: Wed, 30 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745998793
