Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6063F9F2F
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785881434; cv=none; b=aW7VMM/NW+s5BehLDKk2xzNAMzgghnLpx3HmvRa9auJXXqRFYCDSaXELUKKOyxHC3ePlD9ReLaElb9XcLq7j2/PYJ9NW5MNmCevSSiJRhNh73qWGVyh6XmcyWUyxJcUBfU6V28pdjEcmlW6PfsUF2kRBO2y1GXT5CVB/xH5AcpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785881434; c=relaxed/simple;
	bh=Dkptu3yuf/wCqSTpZKMpkIYuFUwNDNSr1rvDqmckkOU=;
	h=To:Subject:From:Message-Id:Date; b=vF2qEg9E1Lq+sfQp3DDJEnERkwFqstJ4BLmVRM66Sr6R5HfU9UGCLc+xZq6jE884BwLmwYjn2aLeH5S96zBIH9kUJUCHBCkI3+dYk21JFsFmQ8RMvP3ij5lcJiF1xbUrsRwJUhOGGIjKAgSwNQQtZH5jPMgRMrBAS1XI4tY0iNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cenoBHEB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cenoBHEB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A7BC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785881433;
	bh=Dkptu3yuf/wCqSTpZKMpkIYuFUwNDNSr1rvDqmckkOU=;
	h=To:Subject:From:Date:From;
	b=cenoBHEBRcy6r/R80El7qSZsR2T35sPWDUXVoJTe8GyZzG81v4bT4HUMpwPoRPpVy
	 NqGfkO411BC9VU+n8lTD4jkDPT5DVPsnpqM7y137U2dzSpLCiJh7iUoy+aFoHGkUrH
	 Lr2nMeDSooj2zaPbS1QXD8eYVueAEvtObK39CQ8hl352A3xIqbFlHpgC6C7dsgAuCl
	 Cvqa+wcjGd6E7YUF4E2jJKTu3oTOcWsviyIBFvS6P7OooUgTSaEPtOkgV+cBy5PTk6
	 UUyRYE2WPJrk0Dxlu4qGIukzG+hPofV2MzI1cOTQwZDWctkWk4S1BL9lTClQ9XNvvv
	 dvc1RsQt9D7IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9E2C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178588143368.2406.1987391163243862382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d21cdf4b6a5f83d29cec691aeee0e19835aff97db97960612a752a57a82d3b77
Date: Tue, 04 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785881433
