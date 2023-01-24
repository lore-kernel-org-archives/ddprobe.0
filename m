Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEF68BEC
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 17:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC67C433AC
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 17:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674579785;
	bh=yFWbiM332Md751ZHcrhe8YXhCfYIOyXYQ232/kMUmZY=;
	h=To:Subject:From:Date:From;
	b=GtHaILvcZi7kjRKT/LURmBDeuNRBPCoQtg0jHLqcIacvwkxkrrBCCXpFxmmC7RJ4l
	 yrqbbR9Wz8WRezlDFh/79QyEmDxnFq+U68pFaMW9SAcWZ0dzsXmVDi7kVpVtV7LXzl
	 fBqnn6Fvl40LsXfuNBlOo/GidaNcV/Toy5YudwM/Dmk2zQjZfubrQHpRaAq20+B015
	 QUKSSqdlp+yfmzFk2qiNE7CYUGs4DLPsNKXwzNqJMviucboxv/Gp8p8IMC/qeq1Ohq
	 mB9AmyV5Yb4KevI6ZiLGVHRHSL3Z8gG1NoXD7pjR2XTpOYPOQrNfqcxoWqsgHJD5Iu
	 yiXamGYxWa8KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE034C54E94
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 17:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167457978576.27293.886549164393805736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6c5d97651c6169bcf78b5331a9bafbb46c60d2829d3c6dfc55b92ffabcfaca
Date: Tue, 24 Jan 2023 17:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674579785
