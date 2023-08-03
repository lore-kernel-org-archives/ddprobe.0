Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB8A25178
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 19:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5199C433C7
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 19:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691091788;
	bh=uAGYn2HcEtWkpgECLIRBlp1vOIcQOgZ9dkPeEHJnHic=;
	h=To:Subject:From:Date:From;
	b=Mb8rsrftOOAwQ2tBobUhAJOFAEeqOw/nThF1PkCm1FWNgkV5S7p54aGgHgg24pM7p
	 uYr98C34oQTmOrSer2DcI8ihKJEY6mmlv1E+f4vtgoHFxkhus37986MVfeT6CsOBm7
	 gTChb1gj/HVSLWAFij0X8Z5jOZNENHhQm0LLQq6jMcSJK3ixDAk49k6yQ3pf/8QXBM
	 vsbKLR4hPh92D0Xj8lEZJZnkOkGk6JWg91wUt2qrgov/93sQP3W/8lhdLtUy1HYdFT
	 L8cFmWen95GoRINVu3Ru56Cm8yH86uG/apRlg3sdqhiOQa6mdfRcFQFn0WV/tnJlXI
	 dKYNMR//0hwNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A720FC00528
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 19:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169109178867.12031.15563267749559674931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2da1ff3e9ad74ef792c238db0799f3e99dc241fbec54067bfb9af2571ccbe19
Date: Thu, 03 Aug 2023 19:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691091788
