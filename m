Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225CE28D8CF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751062794; cv=none; b=H33gC4hG9vGhQL1UhzwNyImQMu6qiLqRxq2fXU8aHchUqPbj5pYw4br2b1Drrq+bie7mN65i34So8SgVUR5D0y+riAMflVt9li2OManHa0zLN7vf5yLjv6as0v+RwK31wthvMXE5jcu9Ojfs4X84IVTjSVLfRnRN+yjZhJSelHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751062794; c=relaxed/simple;
	bh=B5zKWooI9RgUkKrroeYCztReN+0AN5hgFdNSm2lKmEk=;
	h=To:Subject:From:Message-Id:Date; b=YE4YbQqXK0lEHQSMZz7tOjMt2fvpAu0HrZucLWPypU3FSYlwS12KO0/Hx8jMDCzO4n7+kX6CLph+BWvX2D7XwjSkg9pffJF4OyYxwtmJBHwiiCRCffqH2pN8y/DYiFstXUB0zi9X1wNGXZ+l872zKwRJpzEO2cpXZls5a6m2Trc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKRLnLOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKRLnLOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB874C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751062793;
	bh=B5zKWooI9RgUkKrroeYCztReN+0AN5hgFdNSm2lKmEk=;
	h=To:Subject:From:Date:From;
	b=VKRLnLOlo1gqK0kccY2IysR/7PXQeDZ2S/y7vU1ShDnVxpAzbXRUHL/FOSwtUFTHf
	 rU48ea8w/QWjVz5RCPrYO20wLlbzX4DNyX8sJPCkvS3CrASC9dmBSHQVEeznQ5W6T9
	 +FCV110Yvef+RO5WqFuvqTX6XPhT3a/bSYvbqKWP1H48eoRN3sC9U76yxbBE+DXL25
	 YEJM9cbO8/W7ZMKylyp/LU0fNwGTtjuCmeEPeBQiGixZXVlXwqpt7P/a/ywNXAAGKS
	 EnXV5jDVaLDGdMpGMsdeYtzdB9yhFRYE3Kr6NqJebKraexYw+PlorkRL7bwZhrlp+8
	 mVpV37Td5+Cmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BD7C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175106279359.7754.1630243198265371342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 438c2f8292c1b9bab13cd8b6292f7f04000ab4cb3b361f411c1e9e1d496bf2d9
Date: Fri, 27 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751062793
