Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5043F17CA
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 07:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E9DC433C7
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 07:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691910188;
	bh=X/5oYMFuD8k5qtD4gb8dQ80+Wpq01yfZl3+QdmHER88=;
	h=To:Subject:From:Date:From;
	b=TGAaTB570v7RSe267baMVOCm7y03Z0FWXqtB3E5hVabKfnyBZrXfN5LEE5PbfFr4k
	 qMqOxTxcNVm+ltoHKY4QAw1qlgg1xmt/ky26UOYc1XgXwMyYxrkGtKL3owXMgbKO7y
	 3jrTdYqkkk1XSJOW+Qx1oBjJQ0gX5yRBafQG+3iwipZ7iUxxgfRZqXMpvn2zuC+Zti
	 KP7I3ddvT3QHHWc7+tY6FJr6pSpyTxb3nkd1f3nA3w4Fd3mtGYPiWmsR12o6MfpAlD
	 PTIYP347VuITvK+dbssYPmNIxKgSu63VFPDpPrcWr4cfgOERKBDxKz6SqU7DOx2F9I
	 YX1GUFQcyyB9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ABEC001DB
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 07:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169191018868.8031.14220269818979613925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd71404473f70b03f6387fb3d96fcc8f5386e6da8be107ff495105bba9d1f5c1
Date: Sun, 13 Aug 2023 07:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691910188
