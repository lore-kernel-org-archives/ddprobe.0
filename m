Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3092192F2
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766586234; cv=none; b=k0ZuQx+viv29zDmLFYOdW+rZSSmS0ysIKiy1+mprAqLE/7YwUy39FKVQ5Ls/Chyr3CBH+NIc5jQq9A6iGSMTr8FUzPAk6T9tSBXYwGpcwnpN/7Oqo1ezqzqyx+7MykjmgDkfx/mx196oiFXY1RW/bU78XYNKzHXwH+U+sCJjjiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766586234; c=relaxed/simple;
	bh=TI1BXoNZOONa4PLSOqWn1pRcZcy4b93sVC3JgBABJqA=;
	h=To:Subject:From:Message-Id:Date; b=YzFqzEFVWcSq7os2pS7qQgR06DvXHRGqSakIiEKcHMGNujvt437TVkxjRqHOjNZ/jGBf/g+2eCtFSwAF/u9gzl7tbzBkedpBqhDIzHFPV2sUTR/wBPQP3rfFRxaBFItUXVKYuTK9Y8ogcfk44e5vW3QJNr7+kH70+4cr6pTD6u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDFxmkHH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDFxmkHH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A90C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766586233;
	bh=TI1BXoNZOONa4PLSOqWn1pRcZcy4b93sVC3JgBABJqA=;
	h=To:Subject:From:Date:From;
	b=YDFxmkHHl8FA7NeNNs3TcMvki4MyLkFxo4h3GmXEznXWIfUniEZovjiR9W1PF2mSY
	 Tft1+upn4OOsf8T2DQoqi3ZRzlViWFlmgdTOjKtIjE9lXnZ5439hKK4Fpm27NlBEwM
	 Ope/FLpccK4RPmHZwYet2d/wgGpIeatSwi+OrULyBNsyiqgRXAYrw84gj3rr/7ESj0
	 YKRFy1ZRyqmUBDIwNVoCaRKPo3RXDWziuSubQIZTO6aQ1soXM5d3/uzzExeQ2rbxze
	 1Ho+zw+Ee9Y27VXXOLQZcdTq1D1YUB/BKQ90iKC1LtiDwystl2nYgxFesmpkKe+MBH
	 Bb1fNOpIKaSYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903FCE77361
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176658623358.7729.13615804976246233581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5b1e8909b9bd1d07bbbd17d045f819b836082afa72efe423d9e098b1727ca68
Date: Wed, 24 Dec 2025 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766586233
