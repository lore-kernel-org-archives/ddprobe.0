Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C981ED55
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 15:39:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C911DC433C7
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 15:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689262748;
	bh=GXJTETcrE9Uv3IXXqiHH+iigADwYiCxIgjka2hQj0tQ=;
	h=To:Subject:From:Date:From;
	b=b1bBVMnttlhS5hn7/xjyqTCtfV2s0rc41lzJOJdzUx4jTSQRspmUg7zI38TnErHlv
	 Qojh6UWhPCX7XYuDiEIg1xLyhhT83ozsuMLHp+RMYStzJVsv0w8HXOylNWQyHQ7GmL
	 6WSPBkOpzE6t4wqmSUfpD6hanZ0hw5YnX/FF7WhaaD53TIbkBtNNpJ/s0KyFtBuEfc
	 QD0bQGPSjd9RDMx9bfxlFEg4065lXKJg+P+gReyNTf5DHawVq80pSEZSIhDaTnmrx4
	 R/SVzYCpEOjeJpwNnoUa+tjEbebqkOVlDMFDCcjQMopIvfrRgjlbdf/EEQQ2vliDTS
	 v5nlUljJxzYgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDC7C0015E
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 15:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168926274870.7597.6509982723516662069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 599cd2f64b9c76751fb680db9f8f1d14cfcf6ca2ca9593e65ad6139f7c51bb29
Date: Thu, 13 Jul 2023 15:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689262748
