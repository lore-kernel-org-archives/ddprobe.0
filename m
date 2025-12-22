Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF8519E98D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766394234; cv=none; b=nlHikxxYyVu3J/IcXNSrET3Kon9I10VlVi6L+JLy5JMiVlKd2099JWAfWZQTZ8Gd1Jf16fQ95aeJXDMee1LDip5p/r8lbJ+nOqrNTEFsK+0apuBT9VyBbOqVrdBWNPuPzUoV3sdn2p7wBoYpsutaER6WT4qw9rDsnPy5IQ028zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766394234; c=relaxed/simple;
	bh=e2Qk0CvWHH9yqoWBWKLZJJHHzQ1NlDmx991kFldiRLk=;
	h=To:Subject:From:Message-Id:Date; b=cyeyypxTOYiFtHrdrRMmlhHupE6ZgEDwMs91O4I2ylsAMaQtibikK2jIj1B+Z2Xq09TdJ8JCckxgQyAC1TARvQoZS5ZnjYb805He9tY47Bwv1XBxHpBPn0BVbt2UYLNTBdOp2IPwQ5aAOpJuZw685ZBSkdX+qQZcV1w8Vmr5cTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYOHmvnn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYOHmvnn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0975C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766394233;
	bh=e2Qk0CvWHH9yqoWBWKLZJJHHzQ1NlDmx991kFldiRLk=;
	h=To:Subject:From:Date:From;
	b=HYOHmvnnFjXmijGk7JKaFNakcSL5OToizEBIzXzf1xiYb+wvPnhPKlk+Cta0t7F3L
	 4IGznk2TRnSqHVMvqum0By7R8pEdzy1SRNPKzI2zZuM6NNflQrUZ0wR7ay51tYhvvI
	 EqFN/2XZhZXR5Z526IYWsgntlVlCLuRo9XyiHZmZaz5x+GxCg58lBGXlTDIoH4kHsN
	 sSeCq0f/Qhi+Mt7URTdH4mt38FLeQiat85sQRR+BWteKl/0uCmuvfp8umMR1r3kBf+
	 fdIkgOlf0tqv0UnjoBDpUCCia7+5MMh5vPCIUVVwR7HxV210Tyq7Sn1rItCdlFCe1S
	 vFKxwxq64c+3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F492D711D5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176639423358.11839.9783241447800231153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fed8f7ffd086ad9d5272d4c49ff81b1029a131732f36fbd52f48eff75d4e468
Date: Mon, 22 Dec 2025 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766394233
