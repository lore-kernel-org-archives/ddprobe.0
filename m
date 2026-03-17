Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26B7330D24
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773731694; cv=none; b=B6fVcy/4pCvgtRh9eBz93jsMmkP4zGWrry63jZNdgq/fDPKSBuoP9XjWfSiwgK5lY8A4B7oe/UlpOo7CXdy8aK86UijsuiDdB6ky5uLszhv1JrI67+BEn4YlZeg7W7mpK//Vxe1mym6QCCjYEtrh9gYG/18uh2Kc45/ZOPcEHZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773731694; c=relaxed/simple;
	bh=3QPb/Y+//C3ZvMgQL1M2/aMA1RxixcZiWSlev0BtmGk=;
	h=To:Subject:From:Message-Id:Date; b=fKXMFSVDJTkLXwDY8TmfwIkyiMZG5VSSJLqFDF7sppQ9z2GGpeiwVmyo+Ch1ZRSU2wRmJGEIGHIdpji1Xup1gsJNIDokMaoiF7h/8RP+tbEAmRRnPK9HcnzMVQzc5+DleULAn2AKBZKNFERronxpEA+rxD0sWcH42iR/3XAaFk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8lWGtcK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8lWGtcK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0378C19424
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773731693;
	bh=3QPb/Y+//C3ZvMgQL1M2/aMA1RxixcZiWSlev0BtmGk=;
	h=To:Subject:From:Date:From;
	b=M8lWGtcKrEOUfdKalXWjgv3LfNr2PNLd9M3E0DV9O1DT0j9zi6dmbPamCg0jBwMjP
	 9A5ROZWVkgKz3Vo6R5IaTrThkCEMhwBr3vyG8oNYhTdJKcykV5HW4UGWVGb8+/Pxl7
	 fNRtHYHOw3DDhZP3ZD49n/q462iQVggSDdpz+IkxPoyOrNIo8A9td3JuC6EcmvIuAB
	 gVrx/QHBRhdywVev/vrnwkV6ZIDX7099VM+oe8MUpNYB879x0enaBLkIyN9j5XiHE6
	 D3adZ3RDhcC5jk6RKl29rzLWo3kzQxB5+Zqi7ZeXgmh1wUF9Y5I20wKq1x+TypDV2s
	 5S00Wjm0g0vkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2A2F33806
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177373169357.31986.18303217809714908806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f09960a8bbc272b7b07cd0d310019f120737ae1f7567e31b9045b0d704eb4af3
Date: Tue, 17 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773731693
