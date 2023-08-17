Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9751549E
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 15:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA32BC433C7
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 15:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692287588;
	bh=KUaIC4y9Y9HbhmdX0+/zfcC4k1iGuq0iAfF8JlcKK2Q=;
	h=To:Subject:From:Date:From;
	b=LVDpfeDQxLw8IiiRgu///wWfx5E6Avcr3LvU7WKnjfr7ZFf/FvCu+Fn2Tb6B/OI6T
	 KetywAmEG1rWh3xo3OV1zDwTG1zE7iIAL1CSeT0RT38HHgpof9wPuLWenPLc2G6IOd
	 bNx/B/4eg02Ow4El8ib5Epck+y1cOGFfsxVOldtFC2zw3hbZd11WxCHxxMF5SPKblv
	 T5bDRVWDNKsyuqa+ajzVGrHDbcs489HEVt/sVz7RydX30+HgblgpoZm524j4YNexhP
	 gpjrsV73r2Ud5l2wUIVoTzpEeSR56wlxlkUGArhoGWaqDTsRO4H6DVhr7MMP82mj16
	 8A26Xq4Jm8t9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE7FC3DA4D
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 15:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169228758869.8832.9018303445815088451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 240933f6eb47d607d3b9e273b65477ed8364b72b2d177e623055a9b4379d6728
Date: Thu, 17 Aug 2023 15:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692287588
