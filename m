Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5FA61863
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F7E0C433F0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673044887;
	bh=kKmGokaXvJh8GFMau2tChIZY3IxkQDR/S+srTq2zvDM=;
	h=To:Subject:From:Date:From;
	b=WXAemZt2wFsjYZ861NFXQ20PYkXr6pqtCTpTAc3wuDcJ+/BIC90O5vw4aSq9R/wKR
	 1ZQiTT3l1vb9LsV+KkEOSKOfAZnjTO1CZDUZykcYqLZH8hoP1x2JEl9nVX6ElbRVsa
	 Z4sSu66L0p6gHvK3eJCymCdkqGmzu/1xR5B9PAjOtwiEJ1zFhPPbsrxn5+PqKY+gRK
	 xyfSXrHomzNdmKYnnvzeLJVZvczlc4tj00rHf/LaSqsncM6xTmavOmn/6/CtDkJ4Lg
	 Socz22+MWJ1yXnjUdtb6lX7dSi7jiwQc/dUgs37VgA/51ta+LmgF6Wmp2g7r7/oC5u
	 02NeQTK+znDTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A07C61DB3
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167304488740.16411.17426888016431341625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c50025a76f8455452dd9d67fa93c1d3af02630ba62221f659aea2dc9d0e8931
Date: Fri, 06 Jan 2023 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673044887
