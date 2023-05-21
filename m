Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385B023AF
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 14:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF584C433D2
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 14:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684679525;
	bh=5xWFyVCfgEMWfCt6ddZ8uMy2DHIedHW96ApEZGZHe2s=;
	h=To:Subject:From:Date:From;
	b=uCJWFsqbjTLO/v16OMa6w6pIF+TKFXponJiDdE2ioze4Ux7gpP8gwnZJhJ2V63enZ
	 zjxX6OeiFCNk2V+54spkqm+ZTIGBKqfK04pVm8XqYocjnhvfYt5e1qsmvGPXJe4a10
	 6v24NTtm/fIKVRJ+Ab+wRgRt2CRXApFvzN35/lDr5YGAAv9ePF4YbkPxxCRsewB8kk
	 0QaVfzrsLXTljdSXc/W3gyZ87NZYoKsmwhdnIr2csHM5lDKoYNb/SuagzxWJEsqs2e
	 9tXJOZGpN3448q9W1kbTxJDnY1bhvFo/kNkA26YYZgJReirIvFG0kuuuL4RTYDVNm1
	 geiOG1H53E+rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7BAC77B7C
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 14:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168467952575.2060.8711622794850431705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f54bfe19959b42fcbd49b3b15a07c0255230e2cb61bded449b9de64930c8467
Date: Sun, 21 May 2023 14:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684679525
