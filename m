Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE8436FD9
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 807C5C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671724887;
	bh=nGeoWsO9OIp7xP0lhWcsmiqrV0Zz7kMoS7tQISjsrwg=;
	h=To:Subject:From:Date:From;
	b=G8kvZCpftpKBfZFTpnSauPXcCjJVwlR52AD/vL3LivoMKexaN3zy9/pPxxyYPBgyd
	 8bStQAVshx3QcDgQlH/gztT4m5ci2OiR4xitFeNija0Rb1loMGevHsYnPOQyUJ7yAh
	 dqZyGnuU2lAui0LyG3+vFAq7uVYlo2/n6iIn7loTfc5YwSu7n99xGnve2cYRebKp9o
	 eb22jtX0ymspMPxNTjE/vysPFilyYa66KutGhgh7T46pbuu41IImc1/rAule/fQDkN
	 sZXsDz4jGSr8AbTRWe4528KdH5do02oOF2p24aw8osiK3j63JGUSryhh1c5OVsB4wx
	 6h4FuYE2FNzxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6709AC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167172488741.25170.642370777468144972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14cbb8404391773fe4746f1a26133298139d1531138365a85e972093fab1ef54
Date: Thu, 22 Dec 2022 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671724887
