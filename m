Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C59486353
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 22:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763505115; cv=none; b=cHj83IW3Q9xMxmX/+pjiPa//nLpTz/CeOseEZIVAGDvpXHNtaamemH7pT+wntSnbwxSm5X7BrYkBryA6h/tPnJRp7sVCul+Q/VfMLubcnSVIlAl51r8ntJzAGU39r1o3tE2Qqa1e9kKgnz7+tjAmAs7DnMHBGp8LMcd6ViLWlWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763505115; c=relaxed/simple;
	bh=oH5tjZKgQxFdhLsMoS3MLyRRfkPCGcauv1DN7TpRMLI=;
	h=To:Subject:From:Message-Id:Date; b=DpBVnu4y6mjG9luX4RbqdkkVRSglIyEkm9tJbb8eRp9NpLatiKc8DkzhPrV+skFHqkRdTabLvpoi0UiYtx8unLYrgs8BL9J2IKX6YEVi+9GC/31Vfn2gT0Dp1VTC/lysNO3ANUdqj8TgCHXi5Ot9VjO1iwsrRcQod38rTCtvcy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UlDLotPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UlDLotPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE880C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 22:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763505114;
	bh=oH5tjZKgQxFdhLsMoS3MLyRRfkPCGcauv1DN7TpRMLI=;
	h=To:Subject:From:Date:From;
	b=UlDLotPG3kH/WSYVMw8MSm266z/Z5FF4+06chRl9hRwCTFCRuo1pf2SQPEKqY9Bms
	 he7Uw7CgXYcDmc8N8+KI9hdUMQow/hz0WmX3bMpuDwpUcZ7B0B+9tWslyGBaKEW6Ro
	 FTY65ESpjZB/EvyR3wWogTsOKJG4Y8N0QT9OtD5dztIf0X1ma4ab8T5gBfhvluCY8u
	 w694tQY5fW9lrYC4CMlxdaRysHMPrF59N4H7IH2ODZaZPx9CUgBtDvKZC91E5JG0bz
	 3XkUv5x5WRRFXyC/g1EfMIXdZEcUql80aaypaWwWPwldaOz1qIfuXITgYt08mKX4gi
	 7LHJ9f3kFaDDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AABECF2561
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 22:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176350511360.27350.8196462540505778883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ebf8d9628715cb6177889d080c6d167f6de0f43012a28936bc939d6a93633ff
Date: Tue, 18 Nov 2025 22:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763505113
