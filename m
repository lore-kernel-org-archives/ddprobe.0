Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5511840
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 06:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB089C433C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 06:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692168788;
	bh=xVPQUtI+cQFKNeGWq7AqaXb+QQIxjqpEPldQwBTVwgU=;
	h=To:Subject:From:Date:From;
	b=afKmkG+u7jJ4/wl1b3rl3pKjwB4ZHEQL8x4b1QlUUewnXZfO88WMvT0ZWs/FjwHTO
	 gUMtwVyBTrjcWS3xnMJSw979lpqXSajOqShN5F2+zXgG70wF7LhvuHiNw2FgPfl3AG
	 hZIOkQ4YGJxtU9/qN3/auB45VFWLonFw56pA3Sc9QwmhUFQ6ONc3NquR/8k8mVi50d
	 PWGK/oxsvaLlaw22M/cbH8QZzgibH76T2eFYj8/dhRCN++4gMyqJKeVyKPAC1EexQX
	 0WNsicPBkQOTpKtq2GcuarHwgf6mIoEnRBixK+Aj82UaUrcukjptrHoPU8OG7H9uF0
	 dL4+n/9mJKnMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC2FC001B0
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 06:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169216878871.2840.846793970403225570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa02cbca2370cbb8c4bbe3218ebbedd1edc44284901c71a0c5aabc1e324a1ba
Date: Wed, 16 Aug 2023 06:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692168788
