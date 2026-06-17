Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408662EB859
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 02:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781664394; cv=none; b=iEYKq+9kCrYvdKM+0xXoUoF9b5nd2ihcwWsYS4Lv/nXprDHSMth6Z8TYr2Nf+C4px8YrOSjpPBUls0TbetFY0BUeTuV1HYDkWIvdjGoMwFCIlrZmp7Anl/rTnlkL0hhpZhLTp2+lK+UtyUDwnWZWAzyTiis35hD8/T1oWKNlJnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781664394; c=relaxed/simple;
	bh=YLcn7GseXD5Pnx0JRYhqPRVR332sC6XfjvcwA70ZkbM=;
	h=To:Subject:From:Message-Id:Date; b=DuI06qticEtpKAphXFCZkEjGAi/QF4Sm836IxD6lq84KIrji3oaFYWEdHy4mA10USwaemcW5cEvF1KPHFCJPmhDz8DKorTgBpvGCTv2ciKaCVJ2UZ0nIddqKXXR6HkXc2TbDsaKYdpCKbeyIJBPhw3XiMy6OWbOn6EwUQ3KK4mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxfJ8bRX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxfJ8bRX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DD1C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 02:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781664393;
	bh=YLcn7GseXD5Pnx0JRYhqPRVR332sC6XfjvcwA70ZkbM=;
	h=To:Subject:From:Date:From;
	b=sxfJ8bRXX4YnY2XDSWMRGCsjV0ojwAI6O+iNyv3w8aSXS1LEV6jGQeA8J6375H1bs
	 JqCd8Zd1Tw2Rlxcq+j1G2FTBfSl+wKmBFoNLQBF26XHpioCEPu94eEMMTofCeCWvUR
	 zweXARTq/KWozPklXax9L2gNnRMVoVCeN8Wv/A5r81OotaRLscq2k5TqaUgZmexdLh
	 vrK+ShU2n/Wohqg6C5zAmc2qk1iySYAbbRvcDZZ3z/dqMAqbhQ3Fu+VG73cm7b2J2l
	 H06eBYikdP2IUVBhuyY187pCdOuYlzG+/zHHVhe92lzeSHkJ9pZRthfd32XUK7Ftvr
	 vYHeJZvkXxyDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64C1CD98E1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 02:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178166439373.15302.14820868144517130743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67bbd3f67d664f578e7d055e0a697d733cbdc8cd32f06e7efc02b61039483580
Date: Wed, 17 Jun 2026 02:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781664393
