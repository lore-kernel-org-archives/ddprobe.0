Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624AC65B
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 06:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F93C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 06:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695538508;
	bh=BC6TpKyDiG4xPrQPt2aRdlMf+aqX0ILbz6sUA6L16lU=;
	h=To:Subject:From:Date:From;
	b=hDplLezTJsPQ6n7GT9kF2McevIG2ComTudleyc2kvL0dqqnBc+DdlbTET+VIaw25s
	 GC0QWs3B2b8IV62Q7kcdIDUJXl4v+dj9/0V71CbfxFihH/LRoFXacVNGIVERKU4ifJ
	 +ZhXBSLogfSscknQOtaiUesan0cXc5QwcyuLAh+zxxnWPeWEE8Iv+zV30Ep0oSulKk
	 sy+0OVp3rIsuYEoL2/nZFJpE/SGSGKoK5T5Lf1TDtNBGNIOfomIpt9pJfoakoGDgza
	 FRLFbXY+cjKSiFQKvcvz3UIMttUTE1tNRb8FEG6hypsZaZmzkLKGUDx9l1un3XoYRh
	 Taso+mHDbW6Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF47FCE7A8A
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 06:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169553850869.14898.4306507701553900473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8417cb4de0b2c9e8debcffbc24a4d9fe763982971388ad8e31f7bd3f0a68fa6
Date: Sun, 24 Sep 2023 06:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695538508
