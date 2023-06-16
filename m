Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5631CBA23
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 12:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE0AC433C9
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 12:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686917348;
	bh=cSVLPt1OsHbIHBZidJXKzaXTpnEXdlaGAmSvTM22fAE=;
	h=To:Subject:From:Date:From;
	b=FzlG+89/5EStoI01qS6DbY/XJK/GtoZtIwGft23B5ItoGUurAMmup5yqZYTeolvkQ
	 7gSVIZjAKHb3tGBr6ajNR7fSCycgWfZiRtewLwImEIkbGezoUtkTo7kVfubte3PrBf
	 kNnvMvH6E/eZx+zBgf8usbUCp3qjHT1x4VmWZb+3A2wqAG1Lzdmi2aXxroeYvMJfc2
	 Jejmmih0VD2LUZjPvK2Cn/KpCcoAQDevRM2W2PxDl7pCNn7+G1U6Dtlm2rKTOib11+
	 /5ME9s/gRPfm9byhChEZ7irzc5/LTq5cA5JWLd7ptIjCTx4Df36xAhE+3XQp1PVz16
	 jHnkZpXA1/Z+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0115EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 12:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168691734871.1864.13088383614249725965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9bdc5cb61c93d1f6606460f7f3023e0a79b092d6fb7d25018262f259e22191f
Date: Fri, 16 Jun 2023 12:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686917348
