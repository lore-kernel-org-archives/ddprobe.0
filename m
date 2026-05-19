Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C302405EB
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 14:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779201034; cv=none; b=gNjEuFZyKN+T+PW6bjSPGTnem2PVeHVnj26KDjqW+86qRe7Is+ev42zNjvh2i6sj2i/YDIzrpFfz5otdKcvnPYTLXAv4tDB009iULb0pBS9b4cH+/RSz5JDfv6cdqvfxgRPPcP7+Vp91dinJiSlTevG6KzhEnZi3AUfPCrXLZsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779201034; c=relaxed/simple;
	bh=dz1C80+ZmCtKepbcc2EDrcffOc736wEGsM+YJv2EHu4=;
	h=To:Subject:From:Message-Id:Date; b=S4bM21+JXpJO4YMPyP7MXJ2hR0sn/cuxAsSgHezOE43IFBe4LgE+J8aKOHCBpJKSF0RaU/FkxnbZQzGpoHmYOiJwPqhDcSEjy7oEbCd4u0EcgLt8lvua1pkooQigU3BUKk5Fh4Rr9xlfYzqmEjSQ3CciiwcGVCDu44BrLvM1qB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTvkAAUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTvkAAUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE295C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779201033;
	bh=dz1C80+ZmCtKepbcc2EDrcffOc736wEGsM+YJv2EHu4=;
	h=To:Subject:From:Date:From;
	b=kTvkAAUPN+jxZN5zWi2uLEAgIndE98/c/axQfsaPBxrr0Fx+ssQrCBiSA6I2fQxHb
	 kRZ7FV9WRMR7l+R0W2Rf74j8SGrs7HwQ7rhGceV++XjB8SJyoX869cFOp9Aqnl5G7Q
	 9GaVwBAHOvDTwuieFJs6OEA2c6o6/JgFPBQAZvC4JMqqnHBrdtsZNDq/bFypGFpMTN
	 4itvTjeXB7m34bB3l2i0vFv6w94pGIOzSJO+2EvgMWmlzjNt4iB/HIkfhXHPGxm6GN
	 gVIdNmcr0oB1XOwBizJiEl9y7IB9Jvs1mbgbPd3bTr/IbeKy9eZe4R6S3ay/dEhJgz
	 TeEFhcmcupxYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0D0CD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177920103370.23461.16231513177495267123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f436fd28decbc0690703f9852c79353c246fa483cbaf182e395ce830e36029a
Date: Tue, 19 May 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779201033
