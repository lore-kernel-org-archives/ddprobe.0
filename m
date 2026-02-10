Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECDD613D638
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770744834; cv=none; b=tEUHd40vPj9Mx4xozUvANYS1Rw6AFHTRFCeXxHX4wnhZlt77xsV/kgdobV6Htm92MhKuYNfspzLTXGrNr2ybE/M6Rqh/tZpBx9cK9n5YrLwHdtJnQsucRGSZzAcIBPwSnPit4kw0YnguAk/nZVXAsb8ZvrfZIFB6qBfyZMyXriI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770744834; c=relaxed/simple;
	bh=GfAoVfAMfNYwRoQ+vEL9p2ML72w0K/Y1pl9T12Jux4E=;
	h=To:Subject:From:Message-Id:Date; b=vEAfT0PtuDADyY/hsIB3hdSuJqoJrAFMqCx6RkagRF3PaEGw7ZNWPacSVA6b68cqyrW+UZYG+poDsqWn3vYIEHKVSZC/SQ5ZRN3IXHMYWJ8PHUctOz3eYnsML/MY0bJuPq4pxTJ6XC934syTz5+PfsJaHAcctW/0JBGPlXeBZHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6JyEMFJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6JyEMFJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C42D5C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770744833;
	bh=GfAoVfAMfNYwRoQ+vEL9p2ML72w0K/Y1pl9T12Jux4E=;
	h=To:Subject:From:Date:From;
	b=l6JyEMFJl1F9gwc2MuGFGrRj2J59CXVbBLUpREAaCoAdzbngCFmq26TXGee/uTZOn
	 cdCXP3AnPgnmJbLhxBhCwh4jZj7Nyet4z7vHLzbZUAB5uVxM5uYwvbXcI5Ojrokunw
	 bNokW5EGKTrOyq+HP4hRET8tt2NtQI+bK6MEKmYI2SybqC9+jmiesqX/J2Llt6Ig77
	 TLCYvvbf/JisBDdvtLe75eWgGhx4MZaq2LNsE2Gtv704K3EwHptVpmtMY08M66orS3
	 5WMNs9V/g8eALLhC9ySRvzJpmmRxbQhcctx8eX/CTZCAzxvVEzssbPL3QeBxexKOe5
	 qBcr1Xu/1W9Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA719EB26EC
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177074483366.29551.7355612076151270546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdc8de25fbef18965a8d3eb81992ae5357c5ecf34ee8031cba15b53cfa2a0357
Date: Tue, 10 Feb 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770744833
