Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 978624195B6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 11:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783682914; cv=none; b=qDAl+dDeZE2Bx8oqUaFp3cmxlOCEeESKrR1vhWO+fcOO9MsNJFe86PYDo3KSbqWeRTGojUoeCDo7rTeC27TB0rcbw5J7fJOfdHwooMvqqHDrBdbe24HlsflCPTe24grbLySzF6EXkOGrU7Z2p9eCc+abwvAfLXMvGAOv9EbO23U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783682914; c=relaxed/simple;
	bh=DURjq5QZHrNJBc569ZpmBcJLPfNUrC3eFKVd6Ww2oFU=;
	h=To:Subject:From:Message-Id:Date; b=Z98lAis1NWoGhuzwSzIU3A2UPH557tAl3esogUK64uz6cnyRiEpZ6zYUm0SdV5hrSCmDu8dfaVI3aU28+eZyBtQoL33oFT8KsAAiv7PCDFMECb11GueMqcxBl8s3RntG5ulZE6QGnoABRRo+MFljiwlkit15/bRgF9EfRF4fFCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QS5z3bkq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QS5z3bkq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FAFC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783682913;
	bh=DURjq5QZHrNJBc569ZpmBcJLPfNUrC3eFKVd6Ww2oFU=;
	h=To:Subject:From:Date:From;
	b=QS5z3bkqJF64wGcL/58Q6Xokrla6gibfnT3cj9o+apDnX7hjI4YlkA4XcWFsEYyy3
	 yfbqmEz9Z0PrREANvW97t+pSv3IFp0LaNsCIryflobKdMZHPGAaPgypjURfAHa7bJX
	 5Lv/HgcQdr516VXtsazHoYMnKa0D8WKEehbP9WCvOsM952Bz1v0Uej1X8U/I7xjWL4
	 Nfv0fnkEhHAuBXu/OgyDRWdAOVzjYwvyZYehDV3Y29LXeT7261xdGvgesVsqCj1qvu
	 dq+Y+ySBVf8BNPKwhExRBqZm70yuXeT+VAYDNqU+plaoQoQ+qAtryjXyuxSONFLXjA
	 VZw2k6OXoRDTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A997AC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178368291368.7519.12778110286127173322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f136f18eb121aa3e3200ae92a5469c0f478eefb9285e333e94d91c7691b9596
Date: Fri, 10 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783682913
