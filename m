Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB1AA1FAE
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 738B9C433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666990854;
	bh=5FQ0cB8cwBsUcE7WnLLGkhHsls4dUpNWK6EdXQ6V5Vc=;
	h=To:Subject:From:Date:From;
	b=elsdus39eT4EEEdXuEQ4Bh6OqUNpAf5RfugEybxPgk/ucy8ntYxcv6xFvmOfMlkN3
	 hCrkqZRzI2GQPimP97W0rdCPyA4YHV+8NcqiwIAd1/x2h41/GBDWqgzhdDPQXY/srr
	 YDF+TorWhwTiPSZpGwQFlDDsLPYgTwG9eHgBx1F2GKLRBMS/2eutB40Rwih6rQwG6R
	 mrUCDdj0rMssv2EsVNIYldiRazYbDVC466POF/kwA8a6PJkLpHTzCGlz0WABVSb3N/
	 lzR33eoGTTfg0HC2klwSqdbCiEnzXMEpSpCgCHh9RGhZlV0kCo4IjqUxtLkcRBM6Jh
	 joIt/NwH+a2Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561C1ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166699085433.6873.14207635340800682771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 030dc8ec857ab10709337a593f8e34cc1e1aefc777809c43f8d0fa5f55060623
Date: Fri, 28 Oct 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666990854
