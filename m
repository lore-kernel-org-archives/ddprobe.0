Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324C1156CA
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757731794; cv=none; b=sqtdban7o8jbjhNMXpFIbuVjI2GfNd42E0LwCIo16ZTOP/3Fd4jj1ESDYQcg7GWr4C5xUj8F7orrKiEDXM1dVVjSYRXpbU3ogDEfIaa+/pPvsl0IyNXFYtoF00t6MZQrvU2ERzb36zwjWUsqGepHD9BPwmF8FYk2zAAM685c/XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757731794; c=relaxed/simple;
	bh=LV4rWlfh2SGfGT/APmLqIEId/n4IRkOGhOWFspkxhA0=;
	h=To:Subject:From:Message-Id:Date; b=ZqAxYqRwscOQxWlJ/UXD9eUnA1AQbgk/7tiaiCbbqXGJdX8tGDqB8qpcETIqROqAl0XbR0BiUJCN+imbI355fL0pZVJuSZmIrRpfvvKy1o8NgVtJ7LeL5Vdq6OohPiTIH1o0JeZ0pMb6V9IVLo8JxbZdT3hM4CwNil8pp55lssg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r03KCbLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r03KCbLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BC8C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757731793;
	bh=LV4rWlfh2SGfGT/APmLqIEId/n4IRkOGhOWFspkxhA0=;
	h=To:Subject:From:Date:From;
	b=r03KCbLFzh3+OzPOGH05PgfOiQvo99eOf11SrePqJ9/pzy+EkH8kmI83DaDc6Pvo+
	 E4NL1iBuJaWZGb5/l74JyjPaxH+OGpt54Xx/WAfAWXsV7ZpfVdaKhKmTpUlHNYwsEc
	 0tnmQGH4mhcZsBkTPCAc+ugy+mkwP3tWzPFKCnXNPD+aMp0PijQ8ODwDPcW2e07d5c
	 8Xqd6t7FQJErcgKp/Y3oBfHYFnV6QhPDqTguJLJVztye3mbbYET1FBRxZL7WxhnvBy
	 GngwYrQBLo6e+DJgxwtTlDLeyU4LBV2taExyf+bFaw3dZARwvl/TGYHjKYh4l6iqfo
	 ZX3JFu19XN2Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91180CA101F
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175773179357.25421.13288325540217953811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70fec92fade040ccb9706b70b3a0083a3cef231da1df331cacbb18479e52de24
Date: Sat, 13 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757731793
