Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E491A2566F7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773762294; cv=none; b=ODIEG1sH3Av4u877M9YceYZIstaVW8pJlijLArzjAXUyfnHc4QroizH26yq1lw2NRTBsr6urcDjBSI5GtI7M7k55UDhSxbBRr4ck/q00DQEzlxBUPZOR64EiwI4aoXwq2pGrHxqMjGcUHQrBu4H6B3aHhD0RUdgutwabs6PrX5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773762294; c=relaxed/simple;
	bh=wV84FwuQdoszZGhuFkRGnKq7zoFiii9dC+ak7zGsT3Y=;
	h=To:Subject:From:Message-Id:Date; b=LwFy9mbePauhv5b5UGOkJfVcahFgkO7RCqCmUd9xM1FDZSvTpbayTen8AZBXXQWrWwrkFndkuJfTvAJ3zG3BDS63HkfOwD6nEpcghE7wFrtgs5sjF8+1hPTKKLPCrOGDvTd4T/gzcl4UwtEcUQjL25gdL6VtXY/A3eh5svDkJnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0ZvV2Tx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0ZvV2Tx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E900C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773762293;
	bh=wV84FwuQdoszZGhuFkRGnKq7zoFiii9dC+ak7zGsT3Y=;
	h=To:Subject:From:Date:From;
	b=B0ZvV2Tx+ACqTRDfARSmozEmUkm81/4wN2f7sTQxPNgqv2WOZN553eBmsYwBXO2a0
	 buV/7GXKIRGaT/qTUlDRIHQxSjDvEOV17F4yii8Y3gR0YU57D3F0soAsVmGhD5CPH/
	 QzT3qE4uBi1KPvfU8lggKxRZpUVOpaFnpmZ/mo1sELLUwyjtIcF9FphbQFaFZZDgcX
	 zcch7v6rk/bV9F8g+o+3SNHzF5UDVQOgO8lLDhdkfktVaMN4a2zp0/wG3fG21Iezk8
	 IR6PcsjECja+kTZueFt7km5vF8Y2rFSXWzg6sHoYmgFDwQr5SgOZ44tUI0wyyS9uOa
	 SD35ehfQWlZzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD3AFED9E7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177376229358.10994.13440000729407109628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed423d10dd9fdb916c1da3a520c2de680d10be54768dc20f8110cc88fe36042
Date: Tue, 17 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773762293
