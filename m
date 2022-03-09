Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484725104
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 18:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646850384;
	h=To:Subject:From:Message-Id:Date;
	bh=PWSlvJ1UVEybtCd5PN3qO6HN0tKDuIXFTFdAylUjX5Y=;
	b=Jk9Restz0MwpmUjRVX7FnuFcamancd2hqfZDdA209U1bEzYK1qt348omBcd+sYjX
	xl/G8xk7AeFCcXSGcBnTw2D+9Wur16IIrX6MUQDEl8LDW4YMgPCvKCe/DR4xiV5RCFk
	u5f+MFrP2V5xjKrQaZPgN1qPORTg5za2+hUQngCI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646850384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PWSlvJ1UVEybtCd5PN3qO6HN0tKDuIXFTFdAylUjX5Y=;
	b=CZqy9eqr73VAoaIOlUQP8txYunv8oUvqZhfvEJG+kl/3Q/ZQsDYeCLPsy3gDuc4U
	hwts+fDg9tlInkMRlTslM0YM+TDbM2dUXUxn+FFY2C8EVgtRziiMUp++x1DL86oUVu1
	tvbgtXraKckOKUm5K/R/trU+mZmVrgGEHLoc1ik4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6feea38e-98582da7-6b77-478f-935c-da7827920846-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7aa9b7d120cf2ee3ee156cf12a806e19947a7d305811e002ed62700850e78b1
Date: Wed, 9 Mar 2022 18:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646850384
