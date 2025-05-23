Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E34C1DA0E0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748044794; cv=none; b=opVWSM4r64LDE+1VAv1N8ekzUWAqs2aJhuyjYPNUMX1dtrmlBq9PxHJAqgArvjdl1FWdGIZFY3ig4ozRujeZiaS3s7AM9Xm5cGLmJi90y8vWaf5wdz9yT20nPQqQXVBeMI3J0dNW5l3lVPlXrZDQ/GqE6OpuG4ODQSy/FD/Hq3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748044794; c=relaxed/simple;
	bh=kSGMOvNFaJ/xdzd2nZItt6FirBVybLfn/lmy7PFsoR0=;
	h=To:Subject:From:Message-Id:Date; b=oaU0DtTjahKUCeNngqEGaBUm5CiK8Zjx/SuWv9dfWUCFmuUA0lGWXTokaBkiuoFfDe2UnQmKwP/VKx9pSIoTzyftwZ/25/wgEltobdQTrQpvv/z141Ac3jGY8Cw6YbJWjsv4MKS/KSKSGvRbCFegrFKLJ1HHo/88fSv77ca2ovE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9Y3LRJ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9Y3LRJ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EE5C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748044793;
	bh=kSGMOvNFaJ/xdzd2nZItt6FirBVybLfn/lmy7PFsoR0=;
	h=To:Subject:From:Date:From;
	b=V9Y3LRJ8XYLr/H5YM8sWtyU60oqJ5sVZCtMsb5jER+YF2vCBo5uNseS4+kNNEZskM
	 7bYA7EOa32VeLMAdtoaBVj3WRiFS/2VK+Fkqti/bmUGuYuGm86g9/MquENBuRBQrhK
	 B8cFzS4IJ1/AzK0KroV+qyP8thbw2/8nMw/ESG60lBs6U/LiQS8/9xKUNAEMyeaXaB
	 TlTtROAhOS3Wmi350g8vbEZPd/FkqNv0pfAp/r3GeeVm0uILO+zG7tu/Fa/S2fMozB
	 nED7Bmvp1AwMUESp/YR0DbpvO/wvZwq71Qr+0NFwnhbSVot3OM7glh3yMasshfqFzk
	 XGYqNY11kmX1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CA5C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174804479357.8761.2600396003718613201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e27feff51001513d9722761e14ca28d3a1c1ed42dde9c9b02592ae3acb42ec67
Date: Fri, 23 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748044793
