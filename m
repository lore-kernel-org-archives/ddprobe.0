Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6784B613D
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 16:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDB7C433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 16:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694017448;
	bh=vHmiyFBKshUndAdnEq7h19/xdgmoc3tMoeKCcaMGbbs=;
	h=To:Subject:From:Date:From;
	b=A5o2ApZxvxjiXkq0mevEH7oAF0ZJnjisJeWP94RCCdSVVR/OYeHv07sCHqEONDAAz
	 4Ic7WPdVtkjDFOcqhFcia18yoU/8mSUfNaZCN2akmHG0S2rpkh/MtTPYeMPd636oIz
	 WoWv8hwZbcu+3a3KgZV1P1iU3CpmjI6vYhKaIG+CLU0uJ8gXIWxx1OBsI0KWv2ISy5
	 yaR34Znnv5eks0LiCm2S3VsoSbunDBLsJnV2Ft068E1qrjLBWf2RESNpjArmFuQK28
	 YK1v3RqTw3+mtP+pGtvFDCIdzH0XvTs5Xm5nxI02SRb9zCMzcBT80Qe9BIsZrB+0nR
	 XewI6VzvPtkKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD8D5EE14A0
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 16:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169401744876.4258.16094288224410134671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1789b10d8e71a74d4bb70947ab4f361f50556dd50461b9f57c9ad7515245584
Date: Wed, 06 Sep 2023 16:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694017448
