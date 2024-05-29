Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C06B2F2A
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 00:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716944063; cv=none; b=p3k09Z9nNbrMI06BdQFPunUxfHTUMFBKvv9K1SVzy6AP6YsyD0ZUVH7IEBSuHUx2fNxvAFUIkTvpJzYXCOrC6WuBKoviYd/XKH7W/rAPtxkePan6Bg68Zc+5MyXbr4VZJ/wUTT11itAHqFEBAZEwD19E7QGbCiPhfRCNzyJ9Yw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716944063; c=relaxed/simple;
	bh=S9xtIq6dUTGEjeIbWhITEXkwvhD6/xx5t/Uh9w5poMQ=;
	h=To:Subject:From:Message-Id:Date; b=SzcNjBqjMdxM00CsCj1Xpd1L1sOGthWEY6gFHh9MX2DpUBjvIyzxmV1VI6ucdcpzJyGGiavmNqqAUf8VIbuYRW3xd3+vu7tHcJZVfHZqOnEtYbvKEoeC0r0nLpPzBG4oBsaBQpcTnseniDGIO/2k9AXbSBx0N3gr7TQHL3gAAa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAPWqjYg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAPWqjYg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56FDC3277B
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 00:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716944062;
	bh=S9xtIq6dUTGEjeIbWhITEXkwvhD6/xx5t/Uh9w5poMQ=;
	h=To:Subject:From:Date:From;
	b=qAPWqjYgHIqZRvIHeOEVw9XA1UmLOLqZpr3xdEND/ZvEpTxJRhivsubtPy4GWpvPF
	 sNjIXLqGIy1oNfVr6+JR1GjRsKCD+YA715s0pgxOZtvQ7qa1MakJHKbuObrlTu8JKC
	 cczWyWwNLLxt6BvXcM9GDfcbwADpLoInsi4n2x4IjNmvBOcw7XfbHlw4wxBwKl1vt7
	 bX96czu3xfUQlKdacm4ICYIn5NPu9MnxoFuOF5YDRgmmo30iZfxmqjklJE0eEWVlwl
	 dGvqlHIbbtWEaB7iNVp1jxMvW2G9rwqiqUwX+7BFr13iyWS3DGYvKC0Cunq/HHjfSI
	 p+tKJU41zfXbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF88FC25B78
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 00:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171694406277.9718.15126116393237068070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee7840b411570864a41e3627426f6c73fc4beb5022029b4e1b88e2148e766b77
Date: Wed, 29 May 2024 00:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716944062
