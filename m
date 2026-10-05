Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6F74D17B4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791222634; cv=none; b=H0pwJLtUosFBS/thZIA90P/QkUiRVxDpnqEXi/LSG0/bDT734+NZHgLhbNDU9xj7ilpYhOCPBbfWlOJqHPp/cCW3yK+xVSBP9m5nRs7TuD5SAwgfMMNPr9gmcMKuDmKwDt6oc6BiJzl8PjEmRsTFpFQ7ogCekAXwrzxl5zPfGe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791222634; c=relaxed/simple;
	bh=2MZAOKzUfncT3Hl7M6KckhEMgap8L2ukI8W08z6d1FE=;
	h=To:Subject:From:Message-Id:Date; b=I6s5MLWGNp/J4Yx4p6hcDdnJpJmstvPO6l012uP+e9d1Vq7936svrJjJrE1rQD8QAQbrsJ6qXhqUdPFnpDPTmk+tkLkEeMb/9yMKDVgnoia78dAiki4HIkiETV//J4YIJAm1gg+k15r8+Jk6IDmWTgP8H2PE63c4fQsLsIwg1GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SzcJxyWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SzcJxyWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40C8C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791222633;
	bh=2MZAOKzUfncT3Hl7M6KckhEMgap8L2ukI8W08z6d1FE=;
	h=To:Subject:From:Date:From;
	b=SzcJxyWpE4afZiVu9zRVXJ+tZBKdTp6k+pKgoJRtuaPMCrvljepucZzds6h7zwhsk
	 e+tIf7eaL8dOcxkrnkKo/VRQa11Yxs9o7+NdhXVG8X84yX549MDqI/ZazTOnqsY39w
	 uTo++fiMWO1Uo+4LCp8XuXpuptxu38mDKr7yHYgkj/r7XKrsJHM3A279w5AXwrbLWc
	 DB7FvDw7ZiQNK5lxIIabDzHJjJ3xN4Z2Mawov3uO8APDZEM7yE9lF0808yq6MYzSRs
	 Q3eP+mKgQ+RNE2pGbPNSm2LB9HoWRKnecuJUbcD5R1VJgCxHDycXft+2c46wfQcQDI
	 U/DRn0G1uWWXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B267CCA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179122263369.7770.6723163202579825712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ab56766cfbeb929af973f3656702be5d9fc51049be23de75d707944de88f3f4
Date: Mon, 05 Oct 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791222633
