Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F2963C0
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUepfpDH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77CF7C433CB
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702108696;
	bh=W5XelgFjmXH7vUdEilViphOQtFcLLRv50mxQQMXK+ik=;
	h=To:Subject:From:Date:From;
	b=sUepfpDHGnwYUZYrC4OR7qCFHR0uNJloymghyXr+xmY3XpwWT5R7nDyYdgCzEYAAA
	 ZhLUXxas2cSPQ/8DqhyV5zHRE3Yke4YSB480GKbOSIVmb0FT3PRMwE10yr2KDYjpJm
	 PvRmaslOc2XPEBatNJpwoBLzefVqOO3ZFxrw5xMD0N0XNrdYR5mfF19I1cRa3Ph6Cs
	 FTr9dfaX8m+2OSpQOIKma2+KFTvBebHrEql+dBeBmWlbzx93RvE5QF8Vif3DjIcxcT
	 a7D0psvQ/ik6t4x4pZUbYGZNf+VBG/Nqkzhx0dBCgp2K6Agf9mOBuAdAf19M259K6a
	 YHgdaZY2ydl4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D243C10DC3
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170210869637.32420.11479639427458464915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 124ad5d1215b4cfd4b7d774f6f8903512dae37b5916e1d8e06601bd9989f27d7
Date: Sat, 09 Dec 2023 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702108696
