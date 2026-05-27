Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6223955C8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 09:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779873754; cv=none; b=LEozuccTGiPLtAWtPscJSL5AWT+zV6oneQyXYwM0dJJptKyAS6KWOQ9PoS7p1spF0IfKm/nH7lusN/n3TkxdqoNtYP0914a6VyqArVkC/AV5KdrorYUKppA4Kz4LC2c9MjKY0neVo8FQW9AvuGnrjtAN4ghznKfefYQzf1+XL1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779873754; c=relaxed/simple;
	bh=O4H3wcgm+F/ShBPrKH5iE3KW2mTqonbrPOM9zi6DQRo=;
	h=To:Subject:From:Message-Id:Date; b=FDNRQRgPTDn8fLGB4HxpAM3ZynutsuViOlnbR8sl+zmRLygv15m+yP6VenMyGv+H6gRcPTGFTevlkbXppo1NEr3mmzi8Zf6dqhDF+xzEPHB4VHzrwDmViv8HxbnxIVkYIiXunuO1Xt5QFCodgECXP+CKHyLByXSEkEfRx6O+z10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkO/0kWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkO/0kWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1AEDC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 09:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779873753;
	bh=O4H3wcgm+F/ShBPrKH5iE3KW2mTqonbrPOM9zi6DQRo=;
	h=To:Subject:From:Date:From;
	b=XkO/0kWsr4Q7hxuPYr1ZqPAuMrmk1MhYm9O0SovLc8bLIi/qDe3kRGDCONKaBwe0y
	 qIRcq8EnEiN6IcbzY3/TdNAjTC9sI0GSWZJD6w6aVnXHtSF0YKON8Ka+pBCERT3uRY
	 PG8cFrZqqopeSbDSuwRcjd2kfWto8AMD44jIvYe6Uc5TTpsCb1YyDUbgc6at1SDNID
	 lcykdewTYYq31jW/Z3ygqZyAeW6oiWWX6IOKVs3WKww1s3eacJZfqNPfSWijKbXTo8
	 yyWFpfPf7rWi1psHBiAfJxI13GqobflunzDF5D3XCDQbXguwhHKJLsl3vofF8AZ1KF
	 x1sjo16l0PUUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8811CD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 09:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177987375368.5279.10077036672459820641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1025768ec9c03f2bda57c349ba24d598a00271364093775ddc232d5c9b89ab41
Date: Wed, 27 May 2026 09:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779873753
