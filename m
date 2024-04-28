Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EFE615A4
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 03:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714273943; cv=none; b=OPofh321pEp6PqvlB0mYnw4coihswnhNNp/GEKRXUDB6LBtQDk8kBI/toxC14xKEfWE0mvx6BamqdkNTRYJus1xuN3mX2MtVkOyg/ciVHC1wQDNKNYRUwTZ4KdkHsRrgkA33oIK1SdMStc3nKNsB8xbTh5Ve7BPWELIOOLp93lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714273943; c=relaxed/simple;
	bh=s1Mue5E2R5kaK3kGVfDtNF6L02IUNyKP7hZY3a4lrJg=;
	h=To:Subject:From:Message-Id:Date; b=IkeZXQjsSeoGEchlEwzG22Bnb7nc8hp2+Tk7ZzFPSr8qvKUSrtW+rAK73OnbIm3trbBZ7mzHXmq4cq1wZySHR5oxtjN2yVjS/Dvd5Z6GcrPNtLzX/iRdUXd0Nq7Ej7H7RgIyp/NeR4FNpw69h8JNOXftbDSMKGgb10nin+ugcZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnyWzYiH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnyWzYiH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6D6CC4AF17
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 03:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714273942;
	bh=s1Mue5E2R5kaK3kGVfDtNF6L02IUNyKP7hZY3a4lrJg=;
	h=To:Subject:From:Date:From;
	b=BnyWzYiH8HslDC/ksFtIeRS1OxXLN4zw3KI8AF1i0AfrmkZN2eTy84pPfRAArd/Cp
	 Gh2u5D1hw6/Ea9bu28PUEErC8sxaTkBfT7aU2HjVi1XL1eDFtleRn/gPCDhtiEupcc
	 ShgigwI8+9+YlnMZ2VsV4K5cl1qEYxoKRLAlgyB2bZpVdLP/ZnbCA9755RFU6Mfmm6
	 rmU77U1wwZybBIkN5/ySTMT3b8zl87/AEpoR4qaH8XErfU1gnq+96KSCBtpH3LAEkm
	 XkfPY5nmjCsSfogqDEFkrBglPxvxCi5LRXo9CskPN5KryjrzPTN03ZLMDWdJMY058j
	 FlVizmo0IWOBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCA23C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 03:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171427394282.4140.12510283687721027961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb49fd54f2884d4b13d83e22600479f33f9e65bbd8a267e92ea7b5e6f76b0e4
Date: Sun, 28 Apr 2024 03:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714273942
