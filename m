Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2E9C2D3
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 05:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D2FC433D2
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 05:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682487425;
	bh=kUxKzi8I8MKB5A9PdKYK25okK6ujoSjNDtJwEElUfLg=;
	h=To:Subject:From:Date:From;
	b=EvLbSkP6mHenSAH0JkDcwodbHqcys8uPdpwiO+e+8AV1XJeDLVLuzFJFle/cMxvEy
	 XnX3ks0mjiqVdGBSGWjBYkNQH9G6Z7GwlqurwtDrkG0pyXNv5ZwY0s46qVqzEDcZXG
	 GDb25PCVsxkKEb2irAFSsL1kE0NjhpT0noAJ1Gq6fYQCQ16AauvGPSmPnJCrz9yAv6
	 OuWz/pA2K7/B/0372o3Q00vrKsOAdys2PL6kWhN4LxBTxZXehpcqnxpUDCUEGkDALN
	 UwEy1nzapSqDhCWGbQa/Xc7z24rd/WiuJgzZFw+dYXeZBeodr0Fm5eg0tOSSXUp03M
	 FJBnn/wInb8Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC47C77B60
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 05:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168248742576.29251.3069772370894751857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaed22155445a9870c4b9b05c735173d0a0999a6c02d80a20bed2032e12bae59
Date: Wed, 26 Apr 2023 05:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682487425
