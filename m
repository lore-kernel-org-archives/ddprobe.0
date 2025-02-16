Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D6C148318
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 21:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739740134; cv=none; b=Adp91yCSg11RXJdpVBonq+f1h9CZE3QaOFxRn9ZpmN0MVYWBIUQ2sROuGyi8mR+NQdTBWmlA/czcMoHlqYC1f8jeG8bjXiuCNAdVLZ8I0NOWoSbTVQErPIBrI3sIVdrV683+mOEUl+o9naJ8mR8tJXeTTJd9FL6swFQc7CZPK9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739740134; c=relaxed/simple;
	bh=1mGoweX1Bo0A6Rh7CG9axxmfaRLrjUpqouvwuYElBDU=;
	h=To:Subject:From:Message-Id:Date; b=X4nErFrrPlTveD+C8HRMfCd0b1/WuRmIOlSXJTcFfN3MLqfxWz0L3yEXnkz2zF3w0cPcTShZojJrsKS0/Mex6t35Egm1cPCOacldvIgTtxQO6XO4M36Vq03ebC+5Dhm4rkGeaeGMOMDFwVKwsm8gT4HQwFDyEIgcywfBWgQ33/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JM/U/u5K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JM/U/u5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3591C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 21:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739740133;
	bh=1mGoweX1Bo0A6Rh7CG9axxmfaRLrjUpqouvwuYElBDU=;
	h=To:Subject:From:Date:From;
	b=JM/U/u5KGJCXj8q6i/vnvAuQ/9bLsG2z+DE38TgAQJCOCM0QzDoIVVzN2535LbJ2W
	 QoJQyfc+i3tDBYwPA4kkgcu6E0ONEhMOJY0wWnZkBi3+7iR0RIkCAxVTmnh0CSVywK
	 QMJAxCjpVb69EdbaujWQu3hpwzdrX0cNLJOB9Nz5/gF0jt3FfpXC02W+2ovAl82gwW
	 gSkfBwYmJ4ZkO5LK3gGbqxw4MAzU17LG/UBqpUMuqnmm/zKJIwUMnbP/ytiYS0OKEQ
	 yimsB+VC87khHl36q0I7t7BFqXBeLKRxkketZhOGBAjOnxfnHZcMXB2eqKVRo9UwYX
	 2ZSVg4QY+1kaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941DFC02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 21:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173974013358.4781.16214156990527086066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4791beb0bd503980c0990dacbe1618585d207e30e73a2766ec3e503c24fedea
Date: Sun, 16 Feb 2025 21:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739740133
