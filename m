Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF4014A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DFFDC433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 11:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668426654;
	bh=w5zfu+X2UBMFG5gKWX6IElJ9gJc2Z8hDrv4YB1tAkUw=;
	h=To:Subject:From:Date:From;
	b=tWCYSnP+eN3Yiv0rFBSLnAkyVami+zM8i6HMRYB3Bqto1BglbU+4v0GbIlAtQ/+nz
	 ARKpuYrHnz7v7ymAvkV8vPveejdJCZe7eBnmabUhlouZ4i9bfzBCJSEZWz67b8Tc6g
	 RFZMKnHBoTSIrVRSjD5AHUJIGd346MtfuBs3p7NG1MYSWFmbvBF+bhD2x9cRBPwPrH
	 ddZ2L0cmbopygyK1ZLupmj2uLbMgJbBvTOhv1KIMVZbnCGYLLONiMy/qzC+OxEp76u
	 TJ7IuIBoVmj5HydYkg96ng8mplF2PjfbAjNfNRx1ps7gwNFPCqapnoEALXWuhaRYuy
	 J7J1/zz3z42ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55884C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 11:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166842665433.30628.9289970196287042449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0a12f9edba4b340fef59c9344cf4a3936ace487a79946219b79d5f7d71bbc64
Date: Mon, 14 Nov 2022 11:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668426654
